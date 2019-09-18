/*
* HolocronMenuComponent.cpp
*
*  Created on: 09/16/2019
*	 Author: TOXIC  
*/

#include "HolocronMenuComponent.h"
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
#include "server/zone/managers/jedi/JediManager.h"

/* To Do List
 * Clean Up Jedi Lives message responce layout
 * Add Color To Jedi Lives Text
 * Add a Few More Checks For Jedi/Player Restrictions
*/

void HolocronMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {

	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);
	ManagedReference<PlayerObject*> ghost = player->getPlayerObject();

	if (ghost->getJediState() >= 0) {
			menuResponse->addRadialMenuItem(213, 3, "Reveal Encrypted Data"); // Use Holocron
			menuResponse->addRadialMenuItemToRadialID(213, 214, 3, "Increase Jedi Lives"); // Increase Gray Jedi Lives
			menuResponse->addRadialMenuItemToRadialID(213, 215, 3, "Regenerate Full Force"); // Regenerate Jedi's Full Force
			menuResponse->addRadialMenuItemToRadialID(213, 216, 3, "Visibility"); // Show Jedi's Visibility
			menuResponse->addRadialMenuItemToRadialID(213, 217, 3, "Jedi Lives Remaining"); // Jedi Live's Remaining
			menuResponse->addRadialMenuItemToRadialID(213, 218, 3, "Light Jedi Enclave Travel"); // Light Jedi Enclave Travel
			menuResponse->addRadialMenuItemToRadialID(213, 219, 3, "Dark Jedi Enclave Travel"); // Dark Jedi Enclave Travel
			menuResponse->addRadialMenuItemToRadialID(213, 220, 3, "Unlock Gray Jedi"); // Unlocks Gray Jedi
		}
	}
int HolocronMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* creature, byte selectedID) const {
	ManagedReference<PlayerObject*> ghost = creature->getPlayerObject();

	if (ghost == NULL)
		return 0;

	ZoneServer* zserv = creature->getZoneServer();

	if (zserv == NULL)
		return 0;
	
	if (selectedID == 213) {
 		if (ghost->getJediState() >= 0) {
			JediManager::instance()->useItem(sceneObject, JediManager::ITEMHOLOCRON, creature);
			return 0;
			}
		}
	if (selectedID == 214 && (ghost->getJediState() >= 1) && creature->hasSkill("combat_jedi_novice") && (creature->getScreenPlayState("jediLives") == 0)) {
		creature->sendSystemMessage("You have Permanently died on your jedi, you may not use this option"); // You have Permanently died on your jedi, you may not use this option
		} else 
	if (selectedID == 214 && (!creature->isDead() && (ghost->getJediState() >= 1) && creature->hasSkill("combat_jedi_novice") && (creature->getScreenPlayState("jediLives") == 1))) {
		int livesLeft = creature->getScreenPlayState("jediLives") + 1;
		creature->setScreenPlayState("jediLives", livesLeft);
		sceneObject->destroyObjectFromWorld(true);
		creature->sendSystemMessage("You have added +1 Life to your jedi, you now have a total of 2 Lives"); // You have added +1 Life to your jedi, you now have a total of 2 Lives
		} else 
	if (selectedID == 214 && (!creature->isDead() && (ghost->getJediState() >= 1) && creature->hasSkill("combat_jedi_novice") && (creature->getScreenPlayState("jediLives") == 2))) {
		int livesLeft = creature->getScreenPlayState("jediLives") + 1;
		creature->setScreenPlayState("jediLives", livesLeft);
		sceneObject->destroyObjectFromWorld(true);
		creature->sendSystemMessage("You have added +1 Life to your jedi, you now have a total of 3 Lives"); // You have added +1 Life to your jedi, you now have a total of 3 Lives
		} else 
	if (selectedID == 214 && (ghost->getJediState() >= 1) && creature->hasSkill("combat_jedi_novice") && (creature->getScreenPlayState("jediLives") == 3)) {
		creature->sendSystemMessage("You are at your maximum amount of Jedi lives, 3 Remain"); // You are at your maximum amount of Jedi Lives
		} else {
		creature->sendSystemMessage("You may not increase jedi lives while dead.");
		return 0;
		}
	if (selectedID == 215 && (ghost->getJediState() >= 1)) {
		ManagedReference<PlayerObject*> playerObject = creature->getPlayerObject();
		if (!creature->checkCooldownRecovery("force_recalculate_cooldown")) {
		if (playerObject->getForcePower() >= playerObject->getForcePowerMax()) {
			creature->sendSystemMessage("@jedi_spam:holocron_force_max");
		} else {
				StringIdChatParameter stringId;
  
				Time* cdTime = creature->getCooldownTime("force_recalculate_cooldown");
  
				int timeLeft = floor((float)cdTime->miliDifference() / 1000) *-1;
  
				stringId.setStringId("@innate:equil_wait"); // You are still recovering from your last Command available in %DI seconds.
				stringId.setDI(timeLeft);
				creature->sendSystemMessage(stringId);
				error("Cooldown In Effect You May Not Recalculate Force: " + creature->getFirstName());
				return 0;
			}
		return 0;
	}
	if (playerObject != NULL && playerObject->getJediState() >= 1) {
		if (playerObject->getForcePower() < playerObject->getForcePowerMax()) {
			//Refil force + Message player
			creature->sendSystemMessage("@jedi_spam:holocron_force_replenish");
			playerObject->setForcePower(playerObject->getForcePowerMax(), true);
			//Set cooldown
			creature->addCooldown("force_recalculate_cooldown", 3600 * 1000);// 1 hour cooldown
			//Destroy object
			sceneObject->destroyObjectFromWorld(true);
			//Music + Effect
			creature->playEffect("clienteffect/pl_force_absorb_hit.cef");
			PlayMusicMessage* pmm = new PlayMusicMessage("sound/music_become_light_jedi.snd");
  			playerObject->sendMessage(pmm);
			//Broadcast to Server
 			Zone* zone = creature->getZone();
 			String playerName = creature->getFirstName();
  			StringBuffer zBroadcast;
  			zBroadcast << "\\#00E604" << playerName << " \\#63C8F9 Has Used A Holocron";
 			creature->getZoneServer()->getChatManager()->broadcastGalaxy(NULL, zBroadcast.toString());
		} else {
			//You have max force
			creature->sendSystemMessage("You may not use this option unless you are a jedi");
		}
	} else {
		//You're not a jedi yet
		JediManager::instance()->useItem(sceneObject, JediManager::ITEMHOLOCRON, creature);
	}
		return 0;
	}
	if (selectedID == 216 && (ghost->getJediState() >= 0)) {
		ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::NONE);
		box->setPromptTitle("Jedi Visibility");
		int jediVis1 = ghost->getVisibility();
		StringBuffer promptText;
		String playerName = creature->getFirstName();
		promptText << "\\#00ff00 " << playerName << " Has " << "\\#000000 " << "(" << "\\#ffffff " << jediVis1 << "\\#000000 " << ")" << "\\#00ff00 " << " Jedi Visibility" << endl;
		box->setPromptText(promptText.toString());
		ghost->addSuiBox(box);
		creature->sendMessage(box->generateMessage());
		return 0;
	}
	if (selectedID == 217 && (ghost->getJediState() >= 0)) {
		ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::NONE);
		box->setPromptTitle("Jedi Lives");
		StringBuffer promptText;
		String playerName = creature->getFirstName();
		promptText << "\\#00ff00 " << playerName << " Has " << "\\#000000 " << "(" << "\\#ffffff " << creature->getScreenPlayState("jediLives") << "\\#000000 " << ")" << "\\#00ff00 " << " Jedi Lives Left" << endl;
		box->setPromptText(promptText.toString());
		ghost->addSuiBox(box);
		creature->sendMessage(box->generateMessage());
		return 0;
	}
	//light enclave
	if (selectedID == 218 && (ghost->getJediState() >= 0)) {
		ManagedReference<PlayerObject*> playerObject = creature->getPlayerObject();
		if (!creature->checkCooldownRecovery("light_enclave")) {
 				if (!creature->isInCombat()) {

				StringIdChatParameter stringId;
  
				Time* cdTime = creature->getCooldownTime("light_enclave");
  
				int timeLeft = floor((float)cdTime->miliDifference() / 1000) *-1;
  
				stringId.setStringId("@innate:equil_wait"); // You are still recovering from your last Command available in %DI seconds.
				stringId.setDI(timeLeft);
				creature->sendSystemMessage(stringId);
				error("Cooldown In Effect: " + creature->getFirstName());
				return 0;
			}
			return 0;
		}
		creature->switchZone("yavin4", -5575, 87, 4901);
		//Set cooldown
		creature->addCooldown("light_enclave", 3600 * 1000);// 1 hour cooldown
		return 0;
	}
	//dark enclave
	if (selectedID == 219 && (ghost->getJediState() >= 0)) {
		ManagedReference<PlayerObject*> playerObject = creature->getPlayerObject();
		if (!creature->checkCooldownRecovery("dark_enclave")) {
 				if (!creature->isInCombat()) {

				StringIdChatParameter stringId;
  
				Time* cdTime = creature->getCooldownTime("dark_enclave");
  
				int timeLeft = floor((float)cdTime->miliDifference() / 1000) *-1;
  
				stringId.setStringId("@innate:equil_wait"); // You are still recovering from your last Command available in %DI seconds.
				stringId.setDI(timeLeft);
				creature->sendSystemMessage(stringId);
				error("Cooldown In Effect: " + creature->getFirstName());
				return 0;
			}
			return 0;
		}
		creature->switchZone("yavin4", 5080, 79, 306);
		//Set cooldown
		creature->addCooldown("dark_enclave", 3600 * 1000);// 1 hour cooldown
		return 0;
	}
	//Unock Gray Jedi
	if (selectedID == 220 && (ghost->getJediState() >= 2) && (creature->getScreenPlayState("jediLives") == 0)) {
		        ManagedReference<SuiMessageBox*> box = new SuiMessageBox(player, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
				player->sendSystemMessage("You Have Unlocked Gray Jedi");
				int livesLeft = player->getScreenPlayState("jediLives") + 3;
				player->setScreenPlayState("jediLives", livesLeft);
				int jediVis1 = ghost->getVisibility();
				box->setPromptTitle("Gray Jedi Progress");
				StringBuffer promptText;
				String playerName = player->getFirstName();
				promptText << "\\#00ff00 " << playerName << " Has " << "\\#000000 " << "(" << "\\#ffffff " << player->getScreenPlayState("jediLives") << "\\#000000 " << ")" << "\\#00ff00 " << " Gray Jedi Lives" << endl;
				promptText << "\\#ffffff " << playerName << "\\#00ff00 Your Visibility is at: " << jediVis1;
				box->setPromptText(promptText.toString());
				ghost->addSuiBox(box);
				player->sendMessage(box->generateMessage());
				SkillManager::instance()->awardSkill("combat_jedi_novice", creature, true, true, true);
				box->setForceCloseDistance(5.f);
		return 0;
	}
	return 0;
}
