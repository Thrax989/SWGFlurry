/*
* HolocronSensesMenuComponent.cpp
*
*  Created on: 12/10/2021
*	 Author: TOXIC  
*/

#include "HolocronSensesMenuComponent.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/managers/jedi/JediManager.h"

void HolocronSensesMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {
	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);
	menuResponse->addRadialMenuItem(20, 3, "FS Senses XP");
}

int HolocronSensesMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* creature, byte selectedID) const {
	if (!sceneObject->isTangibleObject())
		return 0;

	if (!creature->isPlayerCreature())
		return 0;

	if (!sceneObject->isASubChildOf(creature))
		return 0;

	if (selectedID == 20) {
		PlayerManager* playerManager = creature->getZoneServer()->getPlayerManager();
		creature->playEffect("clienteffect/level_granted.cef", "");
		playerManager->awardExperience(creature, "fs_senses", 5000, true); // Award FS XP
		sceneObject->destroyObjectFromWorld(true);
		return 0;
	}
	return TangibleObjectMenuComponent::handleObjectMenuSelect(sceneObject, creature, selectedID);
}
