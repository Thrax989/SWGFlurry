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
 		if (!creature->hasSkill("force_title_jedi_novice") && (ghost->getJediState() >= 2)) {
			JediManager::instance()->useItem(sceneObject, JediManager::ITEMHOLOCRON, creature);
		}
	}
	if (selectedID == 214 && (ghost->getJediState() >= 2) && (creature->getScreenPlayState("jediLives") == 0)) {
		int livesLeft = creature->getScreenPlayState("jediLives") + 1;
		creature->setScreenPlayState("jediLives", livesLeft);
		sceneObject->destroyObjectFromWorld(true);
	}
	if (selectedID == 214 && (ghost->getJediState() >= 2) && (creature->getScreenPlayState("jediLives") == 1)) {
		int livesLeft = creature->getScreenPlayState("jediLives") + 1;
		creature->setScreenPlayState("jediLives", livesLeft);
		sceneObject->destroyObjectFromWorld(true);
	}
	if (selectedID == 214 && (ghost->getJediState() >= 2) && (creature->getScreenPlayState("jediLives") == 2)) {
		int livesLeft = creature->getScreenPlayState("jediLives") + 1;
		creature->setScreenPlayState("jediLives", livesLeft);
		sceneObject->destroyObjectFromWorld(true);
	}
	if (selectedID == 214 && (ghost->getJediState() >= 2) && (creature->getScreenPlayState("jediLives") == 3)) {
		creature->sendSystemMessage("You are at your maximum amount of Jedi lives"); // You are at your maximum amount of Jedi Lives
		return 0;
	}
	return 0;
}
