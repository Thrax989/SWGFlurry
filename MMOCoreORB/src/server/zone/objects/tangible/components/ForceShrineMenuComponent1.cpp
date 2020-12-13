/*
* ForceShrineMenuComponent1.cpp
*
* Created on: 11/25/2020
*	 Author: TOXIC
*  
*/

#include "ForceShrineMenuComponent1.h"
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

void ForceShrineMenuComponent1::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {

	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);
	ManagedReference<PlayerObject*> ghost = player->getPlayerObject();

	if (player->hasSkill("force_title_jedi_rank_02")) {
			menuResponse->addRadialMenuItem(213, 3, "Jedi Visibility"); // Visibility
		}
	if ((ghost->getJediState() >= 2 && ghost->getSpentJediSkillPoints() > 235) {
		menuResponse->addRadialMenuItem(215, 3, "Force Ranking");
		if (ghost->getJediState() == 2 && ghost->getSpentJediSkillPoints() > 235) || !player->hasSkill("combat_jedi_novice")) {
			menuResponse->addRadialMenuItemToRadialID(215, 216, 3, "Join Sith Order"); // Join Sith
			menuResponse->addRadialMenuItemToRadialID(215, 217, 3, "Join Jedi Order"); // Join Jedi
		}
		if (ghost->getJediState() == 8) {
			menuResponse->addRadialMenuItemToRadialID(215, 218, 3, "Leave Sith Order"); // Leave Sith
		}
		if (ghost->getJediState() == 4) {
			menuResponse->addRadialMenuItemToRadialID(215, 219, 3, "Leave Jedi Order"); // Leave Jedi
		}
	}
int ForceShrineMenuComponent1::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* creature, byte selectedID) const {
	ManagedReference<PlayerObject*> ghost = creature->getPlayerObject();

	if (ghost == nullptr)
		return 0;

	ZoneServer* zserv = creature->getZoneServer();

	if (zserv == nullptr)
		return 0;

	if (selectedID == 213 && (ghost->getJediState() >= 2)) {
		int jediVis1 = ghost->getVisibility();
		StringBuffer messageVis;
		messageVis << "\\#00CC00 Your Visibility is at: " << jediVis1;
		creature->sendSystemMessage(messageVis.toString());
	}

	if (selectedID == 216 && (ghost->getJediState() >= 2)) {
		if (creature->getFaction() == 3679112276) {
			creature->setScreenPlayState("jedi_FRS", 8);
			SkillManager::instance()->awardSkill("force_title_jedi_rank_03", creature, true, true, true);
			if (ghost->getExperience("force_rank_xp") != 0) {
					int amount = 0;
					int curExp = ghost->getExperience("force_rank_xp");
					amount -= curExp;
					ghost->getZoneServer()->getPlayerManager()->awardExperience(creature, "force_rank_xp", amount);
			}
			ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::NONE);
			box->setPromptTitle("Sith Order");
			box->setPromptText("Welcome to the Sith Order!");
			ghost->addSuiBox(box);
			creature->sendMessage(box->generateMessage());
			creature->playEffect("clienteffect/entertainer_dazzle_level_3.cef", "");
			PlayMusicMessage* pmm = new PlayMusicMessage("sound/music_become_dark_jedi.snd");
			creature->sendMessage(pmm);
			//Broadcast to Server
			String playerName = creature->getFirstName();
			StringBuffer zBroadcast;
			zBroadcast << "\\#ffb90f" << playerName << " has joined the \\#e51b1bSith Order!";
			ghost->getZoneServer()->getChatManager()->broadcastGalaxy(nullptr, zBroadcast.toString());
			ChatManager* chatManager = creature->getZoneServer()->getChatManager();
			StringBuffer zGeneral;
			zGeneral << "Has Joined The Sith Order!.";
			chatManager->handleGeneralChat(creature, zGeneral.toString());
			//Set Jedi State
			ghost->setJediState(8);
			creature->setFactionStatus(2);
			SkillManager::instance()->awardSkill("force_rank_dark_novice", creature, true, true, true);
		} else {
			ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::NONE);
			box->setPromptTitle("Incorect Faction");
			box->setPromptText("To join the Sith Order, you must be a member of the Empire.");
			ghost->addSuiBox(box);
			creature->sendMessage(box->generateMessage());
		}
	}
	if (selectedID == 217 && (ghost->getJediState() >= 2)) {
		if (creature->getFaction() == 370444368) {
			creature->setScreenPlayState("jedi_FRS", 4);
			SkillManager::instance()->awardSkill("force_title_jedi_rank_03", creature, true, true, true);
			if (ghost->getExperience("force_rank_xp") != 0) {
					int amount = 0;
					int curExp = ghost->getExperience("force_rank_xp");
					amount -= curExp;
					ghost->getZoneServer()->getPlayerManager()->awardExperience(creature, "force_rank_xp", amount);
			}
			ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::NONE);
			box->setPromptTitle("Jedi Order");
			box->setPromptText("Welcome to the Jedi Order!");
			ghost->addSuiBox(box);
			creature->sendMessage(box->generateMessage());
			creature->playEffect("clienteffect/entertainer_dazzle_level_3.cef", "");
			PlayMusicMessage* pmm = new PlayMusicMessage("sound/music_become_light_jedi.snd");
			creature->sendMessage(pmm);
			//Broadcast to Server
			String playerName = creature->getFirstName();
			StringBuffer zBroadcast;
			zBroadcast << "\\#ffb90f" << playerName << " has joined the \\#22b7f6Jedi Order!";
			ghost->getZoneServer()->getChatManager()->broadcastGalaxy(nullptr, zBroadcast.toString());
			ChatManager* chatManager = creature->getZoneServer()->getChatManager();
			StringBuffer zGeneral;
			zGeneral << "Has Joined The Jedi Order!.";
			chatManager->handleGeneralChat(creature, zGeneral.toString());
			//Set Jedi State
			ghost->setJediState(4);
			creature->setFactionStatus(2);
			SkillManager::instance()->awardSkill("force_rank_light_novice", creature, true, true, true);
		} else {
			ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::NONE);
			box->setPromptTitle("Incorect Faction");
			box->setPromptText("To join the Jedi Order, you must be a member of the Rebel Alliance.");
			ghost->addSuiBox(box);
			creature->sendMessage(box->generateMessage());
		}
	}
	if (selectedID == 218) {
		if (creature->hasSkill("force_rank_dark_novice")) {
			const SkillList* skillList = creature->getSkillList();
			while (creature->hasSkill("force_rank_dark_novice")) {
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
			box->setPromptTitle("Sith Order");
			box->setPromptText("You have left the Sith Order!");
			ghost->addSuiBox(box);
			creature->sendMessage(box->generateMessage());
			//Broadcast to Server
			String playerName = creature->getFirstName();
			StringBuffer zBroadcast;
			zBroadcast << "\\#ffb90f" << playerName << " has left the \\#e51b1bSith Order!";
			ghost->getZoneServer()->getChatManager()->broadcastGalaxy(nullptr, zBroadcast.toString());
			ChatManager* chatManager = creature->getZoneServer()->getChatManager();
			StringBuffer zGeneral;
			zGeneral << "Has Left The Sith Order!.";
			chatManager->handleGeneralChat(creature, zGeneral.toString());
		}
		if (creature->getScreenPlayState("jedi_FRS") == 8) {
			creature->setScreenPlayState("jedi_FRS", 16);
		}
		if (ghost->getJediState() > 2) {
 			ghost->setJediState(2);
 		}
	}
	if (selectedID == 219) {
		if (creature->hasSkill("force_rank_light_novice")) {
			const SkillList* skillList = creature->getSkillList();
			while (creature->hasSkill("force_rank_light_novice")) {
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
			box->setPromptTitle("Jedi Order");
			box->setPromptText("You have left the Jedi Order!");
			ghost->addSuiBox(box);
			creature->sendMessage(box->generateMessage());
			//Broadcast to Server
			String playerName = creature->getFirstName();
			StringBuffer zBroadcast;
			zBroadcast << "\\#ffb90f" << playerName << " has left the \\#22b7f6Jedi Order!";
			ghost->getZoneServer()->getChatManager()->broadcastGalaxy(nullptr, zBroadcast.toString());
			ChatManager* chatManager = creature->getZoneServer()->getChatManager();
			StringBuffer zGeneral;
			zGeneral << "Has Left The Jedi Order!.";
			chatManager->handleGeneralChat(creature, zGeneral.toString());
		}
		if (creature->getScreenPlayState("jedi_FRS") == 4) {
			creature->setScreenPlayState("jedi_FRS", 16);
		}
		if (ghost->getJediState() > 2) {
 			ghost->setJediState(2);
 		}
	}
	return 0;
}
