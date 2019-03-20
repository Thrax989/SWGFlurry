/*
 * FactionManager.cpp
 *
 *  Created on: Mar 17, 2011
 *      Author: crush
 */

#include "FactionManager.h"
#include "FactionMap.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "templates/manager/TemplateManager.h"
#include "server/ServerCore.h"
#include "server/db/ServerDatabase.h"
#include "server/zone/packets/player/PlayMusicMessage.h"
#include "server/chat/ChatManager.h"
#include "server/chat/room/ChatRoom.h"
#include "server/zone/packets/chat/ChatRoomMessage.h"
#include "server/zone/objects/group/GroupObject.h"
#include "server/zone/managers/player/PlayerManager.h"
#include "server/zone/objects/player/FactionStatus.h"


FactionManager::FactionManager() {
	setLoggingName("FactionManager");
	setGlobalLogging(false);
	setLogging(false);
}

void FactionManager::loadData() {
	loadLuaConfig();
	loadFactionRanks();
}

void FactionManager::loadFactionRanks() {
	IffStream* iffStream = TemplateManager::instance()->openIffFile("datatables/faction/rank.iff");

	if (iffStream == NULL) {
		warning("Faction ranks could not be found.");
		return;
	}

	DataTableIff dtiff;
	dtiff.readObject(iffStream);

	factionRanks.readObject(&dtiff);

	delete iffStream;

	info("loaded " + String::valueOf(factionRanks.getCount()) + " ranks", true);
}

void FactionManager::loadLuaConfig() {
	info("Loading config file.", true);

	FactionMap* fMap = getFactionMap();

	Lua* lua = new Lua();
	lua->init();

	//Load the faction manager lua file.
	lua->runFile("scripts/managers/faction_manager.lua");

	LuaObject luaObject = lua->getGlobalObject("factionList");

	if (luaObject.isValidTable()) {
		for (int i = 1; i <= luaObject.getTableSize(); ++i) {
			LuaObject factionData = luaObject.getObjectAt(i);

			if (factionData.isValidTable()) {
				String factionName = factionData.getStringAt(1);
				bool playerAllowed = factionData.getBooleanAt(2);
				String enemies = factionData.getStringAt(3);
				String allies = factionData.getStringAt(4);
				float adjustFactor = factionData.getFloatAt(5);

				Faction faction(factionName);
				faction.setAdjustFactor(adjustFactor);
				faction.setPlayerAllowed(playerAllowed);
				faction.parseEnemiesFromList(enemies);
				faction.parseAlliesFromList(allies);

				fMap->addFaction(faction);
			}

			factionData.pop();
		}
	}

	luaObject.pop();

	delete lua;
	lua = NULL;
}

void FactionManager::createGcwRooms(ChatManager* chatManager) {
	ManagedReference<ChatRoom*> pvpRoom = chatManager->getPvpRoom();

	// Imperial
	{
		imperialChat = chatManager->createRoom("Imperial", pvpRoom);
		imperialChat->setPrivate();
		imperialChat->setTitle("Imperial Chat");
		imperialChat->setCanEnter(true);
		imperialChat->setChatRoomType(ChatRoom::PVP);
	}

	// Rebel
	{
		rebelChat = chatManager->createRoom("Rebel", pvpRoom);
		rebelChat->setPrivate();
		rebelChat->setTitle("Rebel Chat");
		rebelChat->setCanEnter(true);
		rebelChat->setChatRoomType(ChatRoom::PVP);
	}

	// Kills
	{
		pvpNotificationChat = chatManager->createRoom("Notifications", pvpRoom);
		pvpNotificationChat->setPrivate();
		pvpNotificationChat->setTitle("Notifications");
		pvpNotificationChat->setCanEnter(true);
		pvpNotificationChat->setChatRoomType(ChatRoom::PVP);
		pvpNotificationChat->setModerated(true);
	}
}

FactionMap* FactionManager::getFactionMap() {
	return &factionMap;
}

void FactionManager::awardFactionStanding(CreatureObject* player, const String& factionName, int level) {
	if (player == NULL)
		return;

	ManagedReference<PlayerObject*> ghost = player->getPlayerObject();

	if (!factionMap.contains(factionName))
		return;

	const Faction& faction = factionMap.get(factionName);
	const SortedVector<String>* enemies = faction.getEnemies();
	const SortedVector<String>* allies = faction.getAllies();

	if (!faction.isPlayerAllowed())
		return;

	float gain = level * faction.getAdjustFactor();
	float lose = gain * 2;

	ghost->decreaseFactionStanding(factionName, lose);

	//Lose faction standing to allies of the creature.
	for (int i = 0; i < allies->size(); ++i) {
		const String& ally = allies->get(i);

		if ((ally == "rebel" || ally == "imperial")) {
			continue;
		}

		if (!factionMap.contains(ally))
			continue;

		const Faction& allyFaction = factionMap.get(ally);

		if (!allyFaction.isPlayerAllowed())
			continue;

		ghost->decreaseFactionStanding(ally, lose);
	}

	bool gcw = false;
	if (factionName == "rebel" || factionName == "imperial") {
		gcw = true;
	}

	//Gain faction standing to enemies of the creature.
	for (int i = 0; i < enemies->size(); ++i) {
		const String& enemy = enemies->get(i);

		if ((enemy == "rebel" || enemy == "imperial") && !gcw) {
			continue;
		}

		if (!factionMap.contains(enemy))
			continue;

		const Faction& enemyFaction = factionMap.get(enemy);

		if (!enemyFaction.isPlayerAllowed())
			continue;

		ghost->increaseFactionStanding(enemy, gain);
	}
}


void FactionManager::awardPvpFactionPoints(TangibleObject* killer, CreatureObject* destructedObject, int numberCombatants = 1) {

	if (killer->isPlayerCreature() && destructedObject->isPlayerCreature()) {
		CreatureObject* killerCreature = cast<CreatureObject*>(killer);
		ManagedReference<PlayerObject*> ghost = killerCreature->getPlayerObject();

		ManagedReference<GroupObject*> group;		
		ManagedReference<PlayerObject*> killedGhost = destructedObject->getPlayerObject();
		ManagedReference<PlayerManager*> playerManager = killerCreature->getZoneServer()->getPlayerManager();

	//Broadcast to Server
		String playerName = destructedObject->getFirstName();
		String killerNames = "[" + killerCreature->getFirstName() + "] ";
	
			if (Zone* zone = ghost->getZone()) {
		
	// Fight Clubbing
		const String fightClubMessage = "Fight Clubbing is not tolerated within the FRS/GCW.  You will be penalized.";
		const bool isFightClubbing = ghost->getAccountID() == killedGhost->getAccountID();
		if (isFightClubbing)
			{
				killerCreature->sendSystemMessage(fightClubMessage);
				//ghost->addExperience("gcw_skill_xp", -20000,true);//remove target xp
			   	//ghost->addExperience("force_rank_xp", -20000,true);//remove target xp
				UnicodeString message = killerCreature->getFirstName() + " penalized for Fight Clubbing.";
				BaseMessage* msg = new ChatRoomMessage("[Warfront Fight clubbing warning!!!Fight Clubbing will not be tolerated!!]", ServerCore::getInstance()->getZoneServer()->getGalaxyName(), message, pvpNotificationChat->getRoomID());
				pvpNotificationChat->broadcastMessage(msg);
			}
		//Grouped Fight clubbing
		// only check members in Xp range of 128m		
			const float Range = 128.0f;		
			int groupMembersInRange = 1; // includes the original killer

			// iterate group 
			if (killerCreature->isGrouped())
			{
				ManagedReference<GroupObject*> group = killerCreature->getGroup();
				int groupSize = group->getGroupSize();

				// iterate over the group members
				for (int i = 0; i < groupSize; i++) {
					ManagedReference<CreatureObject*> groupMember = group->getGroupMember(i);

					// skip the killer passed in
					if (killerCreature->getObjectID() == groupMember->getObjectID())
						continue;

					// if the group member is in range...
					if (killerCreature->isInRange(groupMember, Range)) {
						CreatureObject* groupMemberCreature = dynamic_cast<CreatureObject*>(groupMember.get());

						if (groupMemberCreature == NULL)
							continue;

						killerNames += "[" + groupMemberCreature->getFirstName() + "] ";

						if (!groupMemberCreature->isPlayerCreature())
							continue;

					// if the group member is in range...
						if (killerCreature->isInRange(groupMember, Range)) {
					
					// increment group counter
							groupMembersInRange++;
					

						ManagedReference<PlayerObject*> groupMemberGhost = groupMemberCreature->getPlayerObject();

						const bool isFightClubbing = groupMemberGhost->getAccountID() == killedGhost->getAccountID();
						

							if (isFightClubbing)
							{
								killerCreature->sendSystemMessage(fightClubMessage);
							
								//killedGhost->addExperience("gcw_skill_xp", -20000,true);//remove target xp
								//killedGhost->addExperience("force_rank_xp", -20000,true);//remove target xp
								UnicodeString message = groupMemberCreature->getFirstName() + " penalized for Fight Clubbing.";
								BaseMessage* msg = new ChatRoomMessage("[Warfront Fight clubbing warning!!!Fight Clubbing will not be tolerated!!]", ServerCore::getInstance()->getZoneServer()->getGalaxyName(), message, pvpNotificationChat->getRoomID());
								pvpNotificationChat->broadcastMessage(msg);							
								
							}
						}		
					}
				}
			}
	// all kills
			//ghost->addExperience("pvp_xp", 2000,true);//award gcw currency xp
			killer->playEffect("clienteffect/holoemote_rebel.cef", "head");
			PlayMusicMessage* pmm = new PlayMusicMessage("sound/music_themequest_victory_imperial.snd");
 			killer->sendMessage(pmm);
			
			killedGhost->addExperience("gcw_skill_xp", -2000,true);//remove target xp
			
			if (killerCreature->hasSkill("force_rank_light_novice") && destructedObject->hasSkill("force_rank_dark_novice")) {		
			UnicodeString message = "[" + destructedObject->getFirstName() + "] has been killed by " + killerNames;
			BaseMessage* msg = new ChatRoomMessage("[\\#00e604FRS]", ServerCore::getInstance()->getZoneServer()->getGalaxyName(), message, pvpNotificationChat->getRoomID());
			pvpNotificationChat->broadcastMessage(msg);
			
			} else if (killerCreature->hasSkill("force_rank_dark_novice") && destructedObject->hasSkill("force_rank_light_novice")) {
			UnicodeString message = "[" + destructedObject->getFirstName() + "] has been killed by " + killerNames;
			BaseMessage* msg = new ChatRoomMessage("[\\#00e604FRS]", ServerCore::getInstance()->getZoneServer()->getGalaxyName(), message, pvpNotificationChat->getRoomID());
			pvpNotificationChat->broadcastMessage(msg);
			
			} else if (killerCreature->hasSkill("force_rank_dark_novice") && destructedObject->hasSkill("force_rank_dark_novice")) {
			UnicodeString message = "[" + destructedObject->getFirstName() + "] has been killed by " + killerNames;
			BaseMessage* msg = new ChatRoomMessage("[\\#00e604FRS]", ServerCore::getInstance()->getZoneServer()->getGalaxyName(), message, pvpNotificationChat->getRoomID());
			pvpNotificationChat->broadcastMessage(msg);
			
			} else if (killerCreature->hasSkill("force_rank_light_novice") && destructedObject->hasSkill("force_rank_light_novice")) {
			UnicodeString message = "[" + destructedObject->getFirstName() + "] has been killed by " + killerNames;
			BaseMessage* msg = new ChatRoomMessage("[\\#00e604FRS]", ServerCore::getInstance()->getZoneServer()->getGalaxyName(), message, pvpNotificationChat->getRoomID());
			pvpNotificationChat->broadcastMessage(msg);
			
			} else if (killerCreature->hasSkill("force_rank_light_novice") && destructedObject->hasSkill("force_title_jedi_rank_02")) {
			UnicodeString message = "[" + destructedObject->getFirstName() + "] has been killed by " + killerNames;
			BaseMessage* msg = new ChatRoomMessage("[\\#00e604FRS]", ServerCore::getInstance()->getZoneServer()->getGalaxyName(), message, pvpNotificationChat->getRoomID());
			pvpNotificationChat->broadcastMessage(msg);
			
			} else if (killerCreature->hasSkill("force_rank_dark_novice") && destructedObject->hasSkill("force_title_jedi_rank_02")) {
			UnicodeString message = "[" + destructedObject->getFirstName() + "] has been killed by " + killerNames;
			BaseMessage* msg = new ChatRoomMessage("[\\#00e604FRS]", ServerCore::getInstance()->getZoneServer()->getGalaxyName(), message, pvpNotificationChat->getRoomID());
			pvpNotificationChat->broadcastMessage(msg);

			} else if (killer->isPlayerCreature() && destructedObject->isPlayerCreature()) {
			UnicodeString message = "[" + destructedObject->getFirstName() + "] has been killed by " + killerNames;
			BaseMessage* msg = new ChatRoomMessage("[\\#e60000GCW]", ServerCore::getInstance()->getZoneServer()->getGalaxyName(), message, pvpNotificationChat->getRoomID());
			pvpNotificationChat->broadcastMessage(msg);
			}
		
		// Group kill split GCW	
			group = killerCreature->getGroup();
			Vector<ManagedReference<CreatureObject*> > players;
			int playerCount = 1;
			int killerRating = ghost->getPvpRating();
			int playerRating = killedGhost->getPvpRating();
			if (group != NULL){
				playerCount = group->getNumberOfPlayerMembers();
				for (int x=0; x< group->getGroupSize(); x++){
					Reference<CreatureObject*> groupMember = group->getGroupMember(x);

					if (groupMember->isPlayerCreature() && groupMember->isInRange(killerCreature, 128.0f) && (groupMember->getPlayerObject()->hasPvpTef() || groupMember->getPlayerObject()->hasJediTef() || groupMember->getFactionStatus() == FactionStatus::OVERT))
						players.add(groupMember);
				}
			} else {
				players.add(killerCreature);
			}

			if (players.size() == 0) {
				players.add(killerCreature);
			}

			if (playerCount > players.size()) {
				killerCreature->sendSystemMessage("Some players were too far away from the kill!"); // Mission Alert! Some group members are too far away from the group to receive their reward and and are not eligible for reward.
			}

			int dividedKill = 6000 / players.size();//award gcw xp for group 
			if (players.size() == 1)
				dividedKill = 4000;//award gcw xp for solo
			for (int i = 0; i < players.size(); i++){
				ManagedReference<CreatureObject*> player = players.get(i);
				ManagedReference<PlayerManager*> groupPlayerManager = player->getZoneServer()->getPlayerManager();
				groupPlayerManager->awardExperience(player, "gcw_skill_xp", dividedKill);
				groupPlayerManager->awardExperience(player, "pvp_xp", 2000,true);
				StringBuffer sysMessage;
				sysMessage << "You have received " << dividedKill << " GCW XP for your kill participation!";
					
					}
				}			
		// Faction gain
		if (killer->isRebel() && destructedObject->isImperial()) {
			ghost->increaseFactionStanding("rebel", 30);
			ghost->decreaseFactionStanding("imperial", 45);

			killedGhost->decreaseFactionStanding("imperial", 45);
		} else if (killer->isImperial() && destructedObject->isRebel()) {
			ghost->increaseFactionStanding("imperial", 30);
			ghost->decreaseFactionStanding("rebel", 45);

			killedGhost->decreaseFactionStanding("rebel", 45);

		} else if (killer->isImperial() && destructedObject->isImperial()) {
			ghost->decreaseFactionStanding("imperial", 45);

		} else if (killer->isRebel() && destructedObject->isRebel()) {
			ghost->decreaseFactionStanding("rebel", 45);

		}
	}
}

String FactionManager::getRankName(int idx) {
	if (idx >= factionRanks.getCount())
		return "";

	return factionRanks.getRank(idx).getName();
}

int FactionManager::getRankCost(int rank) {
	if (rank >= factionRanks.getCount())
		return -1;

	return factionRanks.getRank(rank).getCost();
}

int FactionManager::getRankDelegateRatioFrom(int rank) {
	if (rank >= factionRanks.getCount())
		return -1;

	return factionRanks.getRank(rank).getDelegateRatioFrom();
}

int FactionManager::getRankDelegateRatioTo(int rank) {
	if (rank >= factionRanks.getCount())
		return -1;

	return factionRanks.getRank(rank).getDelegateRatioTo();
}

int FactionManager::getFactionPointsCap(int rank) {
	if (rank >= factionRanks.getCount())
		return -1;

	return Math::max(1000, getRankCost(rank) * 20);
}

bool FactionManager::isFaction(const String& faction) {
	if (factionMap.contains(faction))
		return true;

	return false;
}

bool FactionManager::isEnemy(const String& faction1, const String& faction2) {

	if (!factionMap.contains(faction1) || !factionMap.contains(faction2))
		return false;

	Faction* faction = factionMap.getFaction(faction1);

	return faction->getEnemies()->contains(faction2);
}

bool FactionManager::isAlly(const String& faction1, const String& faction2) {

	if (!factionMap.contains(faction1) || !factionMap.contains(faction2))
		return false;

	Faction* faction = factionMap.getFaction(faction1);

	return faction->getAllies()->contains(faction2);
}
