/*
* HolocronsMenuComponent.cpp
*
*  Created on: 12/09/2021
*	 Author: TOXIC  
*/

#include "HolocronsMenuComponent.h"
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

void HolocronsMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {

	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);
	ManagedReference<PlayerObject*> ghost = player->getPlayerObject();

	if (ghost->getJediState() >=1) {
			menuResponse->addRadialMenuItem(213, 3, "Reveal Encrypted Data"); // Use Holocron
			menuResponse->addRadialMenuItemToRadialID(213, 214, 3, "Increase Jedi Lives"); // Increase Jedi Lives
			menuResponse->addRadialMenuItemToRadialID(213, 215, 3, "Regenerate Full Force"); // Regenerate Jedi's Full Force
			menuResponse->addRadialMenuItemToRadialID(213, 216, 3, "Visibility"); // Show Jedi's Visibility
			menuResponse->addRadialMenuItemToRadialID(213, 217, 3, "Jedi Lives Remaining"); // Jedi Live's Remaining
			menuResponse->addRadialMenuItemToRadialID(213, 218, 3, "Unlock Jedi"); // Unlock Normal Jedi
			menuResponse->addRadialMenuItemToRadialID(213, 220, 3, "Unlock Gray Jedi"); // Unlocks Gray Jedi
		}
	}
int HolocronsMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* creature, byte selectedID) const {
	ManagedReference<PlayerObject*> ghost = creature->getPlayerObject();

	if (ghost == NULL)
		return 0;

	ZoneServer* zserv = creature->getZoneServer();

	if (zserv == NULL)
		return 0;
	
	if (selectedID == 213) {
 		if (ghost->getJediState() >= 1) {
			//JediManager::instance()->useItem(sceneObject, JediManager::ITEMHOLOCRON, creature);
		}
	}
	if (selectedID == 214 && (ghost->getJediState() >= 1) && creature->hasSkill("combat_jedi_novice") && (creature->getScreenPlayState("jediLives") == 0)) {
		creature->sendSystemMessage("You have Permanently died on your jedi, you may not use this option"); // You have Permanently died on your jedi, you may not use this option
		}
	if (selectedID == 214 && (!creature->isDead() && (ghost->getJediState() >= 1) && creature->hasSkill("combat_jedi_novice") && (creature->getScreenPlayState("jediLives") == 1))) {
		int livesLeft = creature->getScreenPlayState("jediLives") + 1;
		creature->setScreenPlayState("jediLives", livesLeft);
		sceneObject->destroyObjectFromWorld(true);
		creature->sendSystemMessage("You have added +1 Life to your jedi, you now have a total of 2 Lives"); // You have added +1 Life to your jedi, you now have a total of 2 Lives
		}
	if (selectedID == 214 && (!creature->isDead() && (ghost->getJediState() >= 1) && creature->hasSkill("combat_jedi_novice") && (creature->getScreenPlayState("jediLives") == 2))) {
		int livesLeft = creature->getScreenPlayState("jediLives") + 1;
		creature->setScreenPlayState("jediLives", livesLeft);
		sceneObject->destroyObjectFromWorld(true);
		creature->sendSystemMessage("You have added +1 Life to your jedi, you now have a total of 3 Lives"); // You have added +1 Life to your jedi, you now have a total of 3 Lives
		}
	if (selectedID == 214 && (ghost->getJediState() >= 1) && creature->hasSkill("combat_jedi_novice") && (creature->getScreenPlayState("jediLives") == 3)) {
		creature->sendSystemMessage("You are at your maximum amount of Jedi lives, 3 Remain"); // You are at your maximum amount of Jedi Lives
		}
	if (selectedID == 214 && (ghost->getJediState() >= 1) && creature->hasSkill("combat_jedi_novice") && (creature->getScreenPlayState("jediLives") > 3)) {
		creature->sendSystemMessage("You Cannont Use This Feature");
		}
	if (selectedID == 214 && !creature->hasSkill("combat_jedi_novice")) {
		creature->sendSystemMessage("You must be a gray jedi to use this option"); // You have Permanently died on your jedi, you may not use this option
		}
	if (selectedID == 215 && (ghost->getJediState() >= 1)) {
		ManagedReference<PlayerObject*> playerObject = creature->getPlayerObject();
		if (!creature->checkCooldownRecovery("force_replenish_cooldown")) {
		if (playerObject->getForcePower() >= playerObject->getForcePowerMax()) {
			creature->sendSystemMessage("@jedi_spam:holocron_force_max");
		} else {
				StringIdChatParameter stringId;
  
				Time* cdTime = creature->getCooldownTime("force_replenish_cooldown");
  
				int timeLeft = floor((float)cdTime->miliDifference() / 1000) *-1;
  
				stringId.setStringId("@innate:equil_wait"); // You are still recovering from your last Command available in %DI seconds.
				stringId.setDI(timeLeft);
				creature->sendSystemMessage(stringId);
				error("Cooldown In Effect You May Not Replenish Force: " + creature->getFirstName());
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
			creature->addCooldown("force_replenish_cooldown", 3600 * 1000);// 1 hour cooldown
			//Destroy object
			sceneObject->destroyObjectFromWorld(true);
			//Music + Effect
			creature->playEffect("clienteffect/pl_force_absorb_hit.cef");
			PlayMusicMessage* pmm = new PlayMusicMessage("sound/music_become_light_jedi.snd");
  			playerObject->sendMessage(pmm);
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
	if (selectedID == 216 && (ghost->getJediState() >= 1)) {
		ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::NONE);
		box->setPromptTitle("Jedi Visibility");
		int jediVis1 = ghost->getVisibility();
		StringBuffer promptText;
		String playerName = creature->getFirstName();
		promptText << "\\#00ff00 " << playerName << " Has " << "\\#000000 " << "(" << "\\#ffffff " << jediVis1 << "\\#000000 " << ")" << "\\#00ff00 " << " Jedi Visibility" << endl;
		box->setPromptText(promptText.toString());
		ghost->addSuiBox(box);
		creature->sendMessage(box->generateMessage());
	}
	if (selectedID == 217 && (ghost->getJediState() >= 1)) {
		ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::NONE);
		box->setPromptTitle("Jedi Lives");
		StringBuffer promptText;
		String playerName = creature->getFirstName();
		promptText << "\\#00ff00 " << playerName << " Has " << "\\#000000 " << "(" << "\\#ffffff " << creature->getScreenPlayState("jediLives") << "\\#000000 " << ")" << "\\#00ff00 " << " Jedi Lives Left" << endl;
		box->setPromptText(promptText.toString());
		ghost->addSuiBox(box);
		creature->sendMessage(box->generateMessage());
	}
	if (selectedID == 218 && (ghost->getJediState() >= 1)) {
		skillManager->awardSkill("force_title_jedi_novice", player, true, true, true);
	}
	if (selectedID == 220 && (ghost->getJediState() >= 1) && (ghost->getSkillPoints() == 250)) {
		        ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
				creature->sendSystemMessage("You Have Unlocked Gray Jedi");
				int livesLeft = creature->getScreenPlayState("jediLives") + 3;
				creature->setScreenPlayState("jediLives", livesLeft);
				int jediVis1 = ghost->getVisibility();
				box->setPromptTitle("Gray Jedi Progress");
				StringBuffer promptText;
				String playerName = creature->getFirstName();
				promptText << "\\#00ff00 " << playerName << " Has " << "\\#000000 " << "(" << "\\#ffffff " << creature->getScreenPlayState("jediLives") << "\\#000000 " << ")" << "\\#00ff00 " << " Gray Jedi Lives" << endl;
				promptText << "\\#ffffff " << playerName << "\\#00ff00 Your Visibility is at: " << jediVis1;
				box->setPromptText(promptText.toString());
				ghost->addSuiBox(box);
				creature->sendMessage(box->generateMessage());
				SkillManager::instance()->awardSkill("combat_jedi_novice", creature, true, true, true);
				Vector3 coords(5294.95, -4123.03, 0); // Gray Jedi Master Trainer
				String zoneName = "dathomir"; // Gray Jedi Master Trainer
				ghost->setTrainerCoordinates(coords);
				ghost->setTrainerZoneName(zoneName); // For the Waypoint.
				creature->sendExecuteConsoleCommand("/pause 10;/findmytrainer");
				box->setForceCloseDistance(5.f);
		}
	if (selectedID == 220 && (ghost->getJediState() >= 1) && (ghost->getSkillPoints() < 250) && !creature->hasSkill("combat_jedi_novice")) {
				creature->sendSystemMessage("You do not meet the requirements for this feature, Force Sensitive and 250 skill points must be free to become gray jedi");
		return 0;
		}
	return 0;
}
