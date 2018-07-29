/*
* HolocronMenuComponent.cpp
*
* Created on: 02/29/2018
*	 Author: TOXIC
*  
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

void HolocronMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {

	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);
	ManagedReference<PlayerObject*> ghost = player->getPlayerObject();

	if (ghost->getJediState() >=2) {
			menuResponse->addRadialMenuItem(213, 3, "Use Holocron"); // Use Holocron
			menuResponse->addRadialMenuItemToRadialID(213, 214, 3, "Increase Jedi Lives"); // Increase Jedi Lives
			menuResponse->addRadialMenuItemToRadialID(213, 215, 3, "Regenerate Full Force"); // Regenerate Full Force
			menuResponse->addRadialMenuItemToRadialID(213, 216, 3, "Visibility"); // Visibility
			menuResponse->addRadialMenuItemToRadialID(213, 217, 3, "Jedi Lives Remaining"); // Jedi Lives Remaining
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
 		if (ghost->getJediState() >= 2) {
			JediManager::instance()->useItem(sceneObject, JediManager::ITEMHOLOCRON, creature);
			return 0;
			}
		}
	if (selectedID == 214 && (ghost->getJediState() >= 2) && (creature->getScreenPlayState("jediLives") == 0)) {
		int livesLeft = creature->getScreenPlayState("jediLives") + 1;
		creature->setScreenPlayState("jediLives", livesLeft);
		sceneObject->destroyObjectFromWorld(true);
		creature->sendSystemMessage("You have added +1 Life to your jedi, you now have a total of 1 Life"); // You have added +1 Life to your jedi, you now have a total of 1 Life
		return 0;
		}
	if (selectedID == 214 && (ghost->getJediState() >= 2) && (creature->getScreenPlayState("jediLives") == 1)) {
		int livesLeft = creature->getScreenPlayState("jediLives") + 1;
		creature->setScreenPlayState("jediLives", livesLeft);
		sceneObject->destroyObjectFromWorld(true);
		creature->sendSystemMessage("You have added +1 Life to your jedi, you now have a total of 2 Lives"); // You have added +1 Life to your jedi, you now have a total of 2 Lives
		return 0;
		}
	if (selectedID == 214 && (ghost->getJediState() >= 2) && (creature->getScreenPlayState("jediLives") == 2)) {
		int livesLeft = creature->getScreenPlayState("jediLives") + 1;
		creature->setScreenPlayState("jediLives", livesLeft);
		sceneObject->destroyObjectFromWorld(true);
		creature->sendSystemMessage("You have added +1 Life to your jedi, you now have a total of 3 Lives"); // You have added +1 Life to your jedi, you now have a total of 3 Lives
		return 0;
		}
	if (selectedID == 214 && (ghost->getJediState() >= 2) && (creature->getScreenPlayState("jediLives") == 3)) {
				creature->sendSystemMessage("You are at your maximum amount of Jedi lives, 3 Remain"); // You are at your maximum amount of Jedi Lives
				return 0;
		}
	if (selectedID == 215 && (ghost->getJediState() >= 2)) {
		if (ghost->getJediState() >= 2) {
		if (ghost->getForcePower() >= ghost->getForcePowerMax())
			creature->sendSystemMessage("Your Force Bar Is Full Currently");
			}
		if (ghost->getForcePower() < ghost->getForcePowerMax()) {
		if (!creature->checkCooldownRecovery("force_full_cooldown")) {

			StringIdChatParameter stringId;
  
			Time* cdTime = creature->getCooldownTime("force_full_cooldown");
  
			int timeLeft = floor((float)cdTime->miliDifference() / 1000) *-1;
  
			stringId.setStringId("@innate:equil_wait"); // You are still recovering from your last Command available in %DI seconds.
			stringId.setDI(timeLeft);
			creature->sendSystemMessage(stringId);
			error("Cooldown In Effect You May Not Regenerate Full Force: " + creature->getFirstName());
			}
			ManagedReference<SuiMessageBox*> box = new SuiMessageBox(creature, SuiWindowType::CITY_ADMIN_CONFIRM_UPDATE_TYPE);
			SkillManager* skillManager = SkillManager::instance();
			skillManager->awardForceFromSkills(creature);
			creature->sendSystemMessage("Regenerate Full force");
			creature->playEffect("clienteffect/mus_relay_activate.cef", "");
			creature->addCooldown("force_full_cooldown", 3600 * 1000);// 1 hour cooldown
			sceneObject->destroyObjectFromWorld(true);
			return 0;
		}
	}
	if (selectedID == 216 && (ghost->getJediState() >= 2)) {
		int jediVis1 = ghost->getVisibility();
		StringBuffer messageVis;
		String playerName = creature->getFirstName();
		messageVis << "\\#ffffff " << playerName << "\\#00ff00 Your Visibility is at: " << jediVis1;
		creature->sendSystemMessage(messageVis.toString());
		sceneObject->destroyObjectFromWorld(true);
		return 0;
	}
	if (selectedID == 217 && (ghost->getJediState() >= 2)) {
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
	return 0;
}
