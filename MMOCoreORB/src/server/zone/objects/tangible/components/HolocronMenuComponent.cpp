/*
 * HolocronMenuComponent.cpp
 *
 *  Created on: 01/23/2012
 *      Author: xyborn
 *  Modified on: 10/22/2016
 *	Author: Skyyyr Death
 */

#include "HolocronMenuComponent.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/ZoneServer.h"
#include "server/zone/managers/jedi/JediManager.h"
#include "server/chat/ChatManager.h"
#include "server/zone/packets/player/PlayMusicMessage.h"
#include "server/zone/managers/visibility/VisibilityManager.h"
#include "server/zone/objects/player/sui/callbacks/BountyHuntSuiCallback.h"
#include "server/zone/objects/player/sui/inputbox/SuiInputBox.h"


int HolocronMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* creature, byte selectedID) const {
	
	/*
		@param If timer is up - Holocron will refil force bar and remove itself
		@param If timer is down - Holoron will not refil force bar and stay in your inventory
		
		If player has !cooldown then
			refil force bar
			galactic message (player, "used holocron")
			player message "your visibility is: #"
		else
			player message "your still under cooldown"
			player message "your visibility is: #"
	*/
	
	if (selectedID != 20)
		return 0;

	if (!sceneObject->isASubChildOf(creature))
		return 0;

	ManagedReference<PlayerObject*> playerObject = creature->getPlayerObject();
	int jediVis1 = playerObject->getVisibility();
	StringBuffer messageVis;
	//put to 0 after test
	int test = 0;
	
	if (playerObject->getAdminLevel() >= 6) {
		test = 1;
	}
	
	if (!creature->checkCooldownRecovery("used_holocron")) {
		if (playerObject->getForcePower() >= playerObject->getForcePowerMax()) {
			creature->sendSystemMessage("@jedi_spam:holocron_force_max");
		} else {
			creature->sendSystemMessage("@jedi_spam:holocron_no_effect");
		}
		
		if (test == 1) {
			creature->sendSystemMessage("This is the check for used_holocron");
		}
		
		messageVis << "\\#00CC00 Your Visibility is at: " << jediVis1;
		creature->sendSystemMessage(messageVis.toString());
		return 0;
	}

	if (playerObject != NULL && playerObject->getJediState() >= 2) {
		//No matter what, display your visibilty if you're a jedi
		messageVis << "\\#00CC00 Your Visibility is at: " << jediVis1;
		creature->sendSystemMessage(messageVis.toString());
		if (test == 1) {
			creature->sendSystemMessage("Your jedi state is >= 2");
		}
		//You're a jedi, and not on cooldown && forceFull ? fillForce : FullForceString
		if (playerObject->getForcePower() < playerObject->getForcePowerMax()) {
			//Refil force + Message player
			creature->sendSystemMessage("@jedi_spam:holocron_force_replenish");
			playerObject->setForcePower(playerObject->getForcePowerMax(), true);
			//Set cooldown
			creature->addCooldown("used_holocron", 1 * 1800000); //3,600,000 = 1 hr
			//Destroy object
			sceneObject->destroyObjectFromWorld(true);
			//Music + Effect
			creature->playEffect("clienteffect/pl_force_absorb_hit.cef");
			PlayMusicMessage* pmm = new PlayMusicMessage("sound/music_become_light_jedi.snd");
  			playerObject->sendMessage(pmm);
			if (test == 1) {
				creature->sendSystemMessage("your force has been refilled");
			}
		} else {
			//You have max force
			creature->sendSystemMessage("@jedi_spam:holocron_force_max");
			if (test == 1) {
				creature->sendSystemMessage("You're full force, can't add");
			}
		}
	} else {
		//You're not a jedi yet
		JediManager::instance()->useItem(sceneObject, JediManager::ITEMHOLOCRON, creature);
		if (test == 1) {
			creature->sendSystemMessage("You're not a jedi");
		}
	}

	return 0;
}
