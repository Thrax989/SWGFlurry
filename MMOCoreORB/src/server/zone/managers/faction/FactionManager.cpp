/*
 * FactionManager.cpp
 *
 *  Created on: Mar 17, 2011
 *      Author: crush
 */

#include "FactionManager.h"
#include "FactionMap.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "templates/manager/TemplateManager.h"
#include "server/zone/managers/loot/LootManager.h"
#include "server/zone/managers/player/PlayerManager.h"
#include "server/chat/ChatManager.h"
#include "server/zone/packets/player/PlayMusicMessage.h"
#include "server/zone/objects/group/GroupObject.h"

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

	if (iffStream == nullptr) {
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
	lua = nullptr;
}

FactionMap* FactionManager::getFactionMap() {
	return &factionMap;
}

void FactionManager::awardFactionStanding(CreatureObject* player, const String& factionName, int level) {
	if (player == nullptr)
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
		if (enemy == "rebel" || enemy == "imperial") {

			if (player->isGrouped()) {
		
				ManagedReference<GroupObject*> group = player->getGroup();
				int groupSize = group->getGroupSize();

				for (int i = 0; i < groupSize; i++) {
					ManagedReference<CreatureObject*> groupMember = group->getGroupMember(i);

					ManagedReference<PlayerObject*> groupMemberPlayer = groupMember->getPlayerObject();

					if (groupMember->isInRange(player, 100.0) && (groupMember != player)) {	
						if (groupMember->isPlayerCreature()) {			
							groupMemberPlayer->increaseFactionStanding(enemy, (gain * 0.5));
						} 			
					}	
				}	
		    
			}
		}
		ghost->increaseFactionStanding(enemy, gain);
	}
}


void FactionManager::awardPvpFactionPoints(TangibleObject* killer, CreatureObject* destructedObject) {
	if (killer->isPlayerCreature() && destructedObject->isPlayerCreature()) {
		CreatureObject* killerCreature = cast<CreatureObject*>(killer);
		ManagedReference<PlayerObject*> ghost = killerCreature->getPlayerObject();

		ManagedReference<PlayerObject*> killedGhost = destructedObject->getPlayerObject();
		ManagedReference<SceneObject*> inventory = killer->getSlottedObject("inventory");
		ManagedReference<LootManager*> lootManager = killer->getZoneServer()->getLootManager();
		ManagedReference<PlayerManager*> playerManager = killerCreature->getZoneServer()->getPlayerManager();
		//Player name on player datapad
		//Broadcast to Server
		String playerName = destructedObject->getFirstName();
		String killerName = killerCreature->getFirstName();
		StringBuffer zBroadcast;
		ChatManager* chatManager = ghost->getZoneServer()->getChatManager();


		if (killer->isRebel() && destructedObject->isImperial()) {
			ghost->increaseFactionStanding("rebel", 30);
			killer->playEffect("clienteffect/holoemote_rebel.cef", "head");
			killer->playEffect("clienteffect/aurabuff_rebel_caster.cef", "");
			PlayMusicMessage* pmm = new PlayMusicMessage("sound/music_themequest_victory_imperial.snd");
 			killer->sendMessage(pmm);
			lootManager->createLoot(inventory, "rebpoints", 300);
			if(ghost->getJediState() >= 1){
				lootManager->createNamedLoot(inventory, "task_loot_padawan_braid", playerName, 300);//, playerName);
			}else{
				lootManager->createNamedLoot(inventory, "playerDatapad", playerName, 300);//, playerName);
			}
			ghost->decreaseFactionStanding("imperial", 45);
			killedGhost->decreaseFactionStanding("imperial", 45);
			
			if (killerCreature->hasSkill("force_rank_light_novice") && destructedObject->hasSkill("force_rank_dark_novice")) {
				playerManager->awardExperience(killerCreature, "force_rank_xp", 10000);
	 			killerCreature->sendSystemMessage("You Have Gained 10,000 GCW FRS Points");		
				playerManager->awardExperience(destructedObject, "force_rank_xp", -5000);
				StringIdChatParameter message("base_player","prose_revoke_xp");
				message.setDI(-5000);
				message.setTO("exp_n", "force_rank_xp");
				destructedObject->sendSystemMessage(message);
				zBroadcast << "\\#00e604" << "Light Jedi " << "\\#00bfff" << killerName << "\\#ffd700 has defeated" << "\\#e60000 Dark Jedi " << "\\#00bfff" << playerName << "\\#ffd700 in the FRS";
				//Broadcast player has died forward to discord channel. created by :TOXIC
				StringBuffer zGeneral;
				zGeneral << "A [Light Jedi] Has Killed " << playerName << " A [Dark Jedi] In The [FRS]";	
				chatManager->handleGeneralChat(killerCreature, zGeneral.toString());
			if (killerCreature->isGrouped()) {
		
				ManagedReference<GroupObject*> group = killerCreature->getGroup();
				int groupSize = group->getGroupSize();

				for (int i = 0; i < groupSize; i++) {
					ManagedReference<CreatureObject*> groupMember = group->getGroupMember(i);

					if (groupMember->isInRange(killerCreature, 100.0)) {	
						if (groupMember->isPlayerCreature()) {			
							playerManager->awardExperience(groupMember, "force_rank_xp", 5000);
 							groupMember->sendSystemMessage("You Have Gained 5,000 FRS Points");
							} 			
						}	
					}	
		    
				}

			}
			ghost->getZoneServer()->getChatManager()->broadcastGalaxy(nullptr, zBroadcast.toString());
		} else if (killer->isImperial() && destructedObject->isRebel()) {
			ghost->increaseFactionStanding("imperial", 30);
			killer->playEffect("clienteffect/holoemote_imperial.cef", "head");
			killer->playEffect("clienteffect/aurabuff_imperial_caster.cef", "");
			PlayMusicMessage* pmm = new PlayMusicMessage("sound/music_themequest_victory_imperial.snd");
 			killer->sendMessage(pmm);
			lootManager->createLoot(inventory, "imppoints", 300);
			if(ghost->getJediState() >= 1){
				lootManager->createNamedLoot(inventory, "task_loot_padawan_braid", playerName, 300);//, playerName);
			}else{
				lootManager->createNamedLoot(inventory, "playerDatapad", playerName, 300);//, playerName);
			}
			ghost->decreaseFactionStanding("rebel", 45);
			killedGhost->decreaseFactionStanding("rebel", 45);
			if (killerCreature->hasSkill("force_rank_dark_novice") && destructedObject->hasSkill("force_rank_light_novice")) {
				playerManager->awardExperience(killerCreature, "force_rank_xp", 100000);
 				killerCreature->sendSystemMessage("You Have Gained 10,000 GCW FRS Points");		
				playerManager->awardExperience(destructedObject, "force_rank_xp", -5000);
				StringIdChatParameter message("base_player","prose_revoke_xp");
				message.setDI(-5000);
				message.setTO("exp_n", "force_rank_xp");
				destructedObject->sendSystemMessage(message);
				zBroadcast << "\\#e60000" << "Dark Jedi " << "\\#00bfff" << killerName << "\\#ffd700 has defeated" << "\\#00e604 Light Jedi " << "\\#00bfff" << playerName << "\\#ffd700 in the FRS";
				//Broadcast player has died forward to discord channel. created by :TOXIC
				StringBuffer zGeneral;
				zGeneral << "A [Dark Jedi] Has Killed " << playerName << " A [Light Jedi] In The [FRS]";	
				chatManager->handleGeneralChat(killerCreature, zGeneral.toString());
			if (killerCreature->isGrouped()) {
		
				ManagedReference<GroupObject*> group = killerCreature->getGroup();
				int groupSize = group->getGroupSize();

				for (int i = 0; i < groupSize; i++) {
					ManagedReference<CreatureObject*> groupMember = group->getGroupMember(i);

					if (groupMember->isInRange(killerCreature, 100.0)) {	
						if (groupMember->isPlayerCreature()) {			
							playerManager->awardExperience(groupMember, "force_rank_xp", 5000);
 								groupMember->sendSystemMessage("You Have Gained 5,000 FRS Points");		
							}	
						}	
		    
					}

				}
			}
				ghost->getZoneServer()->getChatManager()->broadcastGalaxy(nullptr, zBroadcast.toString());
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

	return Math::max(1000, getRankCost(rank) * 30000);
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
