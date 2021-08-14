/*
* BHGMenuComponent1.cpp
*
* Created on: 07/26/2021
*	 Author: TOXIC
*  
*/

#include "BHGMenuComponent1.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "server/zone/objects/player/sui/messagebox/SuiMessageBox.h"
#include "server/zone/managers/skill/SkillManager.h"
#include "server/zone/managers/player/PlayerManager.h"
#include "server/zone/packets/player/PlayMusicMessage.h"
#include "server/zone/managers/creature/CreatureManager.h"
#include "server/zone/objects/region/CityRegion.h"
#include "server/zone/ZoneServer.h"
#include "server/chat/ChatManager.h"

void BHGMenuComponent1::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {

	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);
	ManagedReference<PlayerObject*> ghost = player->getPlayerObject();

	if (player->hasSkill("bounty_rank_guild_novice")) {
			menuResponse->addRadialMenuItem(215, 3, "Bounty Hunter Guild Ranking");
			menuResponse->addRadialMenuItemToRadialID(215, 216, 3, "Join Bounty Hunter Guild");
		}

	if (player->hasSkill("bounty_rank_guild_novice")) {
			menuResponse->addRadialMenuItemToRadialID(215, 219, 3, "Leave Bounty Hunter Guild");
	}
}
int BHGMenuComponent1::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* creature, byte selectedID) const {
	ManagedReference<PlayerObject*> ghost = creature->getPlayerObject();

	if (ghost == nullptr)
		return 0;

	ZoneServer* zserv = creature->getZoneServer();

	if (zserv == nullptr)
		return 0;

	if (selectedID == 216 && (player->hasSkill("bounty_rank_guild_novice")) {
			creature->setScreenPlayState("bh_BHG", 1);
			SkillManager::instance()->awardSkill("force_title_jedi_rank_03", creature, true, true, true);
			if (ghost->getExperience("bhg_rank_xp") != 0) {
					int amount = 0;
					int curExp = ghost->getExperience("bhg_rank_xp");
					amount -= curExp;
					ghost->getZoneServer()->getPlayerManager()->awardExperience(creature, "bhg_rank_xp", amount);
			}
			ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::NONE);
			box->setPromptTitle("bounty hunter guild");
			box->setPromptText("Welcome to the bounty hunter guild!");
			ghost->addSuiBox(box);
			creature->sendMessage(box->generateMessage());
			creature->playEffect("clienteffect/entertainer_dazzle_level_3.cef", "");
			PlayMusicMessage* pmm = new PlayMusicMessage("sound/music_become_dark_jedi.snd");
			creature->sendMessage(pmm);
			//Broadcast to Server
			String playerName = creature->getFirstName();
			StringBuffer zBroadcast;
			zBroadcast << "\\#ffb90f" << playerName << " has joined the \\#e51b1bbounty hunter guild!";
			ghost->getZoneServer()->getChatManager()->broadcastGalaxy(nullptr, zBroadcast.toString());
			ChatManager* chatManager = creature->getZoneServer()->getChatManager();
			StringBuffer zGeneral;
			zGeneral << "Has Joined The Bount Hunter Guild!.";
			chatManager->handleGeneralChat(creature, zGeneral.toString());
	}
	if (selectedID == 219) {
		if (creature->hasSkill("bounty_rank_guild_novice")) {
			const SkillList* skillList = creature->getSkillList();
			while (creature->hasSkill("bounty_rank_guild_novice")) {
				for (int i = 0; i < skillList->size(); ++i) {
					Skill* skill = skillList->get(i);
					if (skill->getSkillName().indexOf("force_rank_") != -1){
						SkillManager::instance()->surrenderSkill(skill->getSkillName(), creature, true);
					}
					if (skill->getSkillName().indexOf("force_title_jedi_rank_03") != -1){
						SkillManager::instance()->surrenderSkill(skill->getSkillName(), creature, true);
					}
					if (skill->getSkillName().indexOf("force_title_jedi_rank_04") != -1){
						SkillManager::instance()->surrenderSkill(skill->getSkillName(), creature, true);
					}
					if (skill->getSkillName().indexOf("force_title_jedi_master") != -1){
						SkillManager::instance()->surrenderSkill(skill->getSkillName(), creature, true);
					}
				}
			}
			ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::NONE);
			box->setPromptTitle("Bounty Hunters Guild");
			box->setPromptText("You have left the Bounty Hunters Guild!");
			ghost->addSuiBox(box);
			creature->sendMessage(box->generateMessage());
			//Broadcast to Server
			String playerName = creature->getFirstName();
			StringBuffer zBroadcast;
			zBroadcast << "\\#ffb90f" << playerName << " has left the \\#22b7f6Bounty Hunters Guild!";
			ghost->getZoneServer()->getChatManager()->broadcastGalaxy(nullptr, zBroadcast.toString());
			ChatManager* chatManager = creature->getZoneServer()->getChatManager();
			StringBuffer zGeneral;
			zGeneral << "Has Left The Bounty Hunters Guild!.";
			chatManager->handleGeneralChat(creature, zGeneral.toString());
		}
		if (creature->getScreenPlayState("bh_BHG") == 4) {
			creature->setScreenPlayState("bh_BHG", 16);
		}
	}
	return 0;
}
