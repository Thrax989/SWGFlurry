/*
 * LightJediMenuComponent.cpp
 *
 *  Created on: 01/18/2021
 *      Author: TOXIC
 */

#include "LightJediMenuComponent.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/managers/loot/LootManager.h"
#include "server/zone/Zone.h"
#include "server/zone/ZoneServer.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "server/zone/objects/group/GroupObject.h"
#include "server/zone/managers/player/PlayerManager.h"

void LightJediMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {
	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);
	menuResponse->addRadialMenuItem(20, 3, "Light Jedi FRS XP");
}

int LightJediMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* creature, byte selectedID) const {
	if (!sceneObject->isTangibleObject())
		return 0;

	if (!creature->isPlayerCreature())
		return 0;

	if (!sceneObject->isASubChildOf(creature))
		return 0;

	if (selectedID == 20) {
		PlayerManager* playerManager = creature->getZoneServer()->getPlayerManager();
		creature->playEffect("clienteffect/level_granted.cef", "");
		playerManager->awardExperience(creature, "force_rank_xp", 5000, true); // Award Light Jedi FRS XP
		sceneObject->destroyObjectFromWorld(true);
		return 0;
	}
	return TangibleObjectMenuComponent::handleObjectMenuSelect(sceneObject, creature, selectedID);
}
