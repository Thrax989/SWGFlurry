/*
 * Rarelootcrate3MenuComponent.cpp
 *
 *  Created on: 08/26/2020
 *      Author: TOXIC
 */

#include "Rarelootcrate3MenuComponent.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/ZoneServer.h"
#include "server/zone/managers/jedi/JediManager.h"
#include "server/chat/ChatManager.h"
#include "server/zone/packets/player/PlayMusicMessage.h"
#include "server/zone/managers/visibility/VisibilityManager.h"
#include "server/zone/objects/player/sui/inputbox/SuiInputBox.h"
#include "server/zone/managers/loot/LootManager.h"
#include "server/zone/managers/player/PlayerManager.h"
#include "server/chat/ChatManager.h"
#include "server/zone/packets/player/PlayMusicMessage.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "server/zone/objects/building/BuildingObject.h"

void Rarelootcrate3MenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {

	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);

	menuResponse->addRadialMenuItem(20, 3, "Open Rare Loot Crate Legendary");
}

int Rarelootcrate3MenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* creature, byte selectedID) const {

	if (!sceneObject->isTangibleObject())
		return 0;

	if (!creature->isPlayerCreature())
		return 0;

	if (!sceneObject->isASubChildOf(creature))
		return 0;

	if (selectedID != 20)
		return 0;

 	ManagedReference<SceneObject*> inventory = creature->getSlottedObject("inventory");
 	ManagedReference<LootManager*> lootManager = creature->getZoneServer()->getLootManager();
	lootManager->createLoot(inventory, "jedi_belt_group", 300);
	lootManager->createLoot(inventory, "resource_deed_loot", 300);
	lootManager->createLoot(inventory, "resource_crate_loot", 300);
	lootManager->createLoot(inventory, "jedi_comp_group", 300);
	lootManager->createLoot(inventory, "legendary_comp_group", 300);
	lootManager->createLoot(inventory, "lootcollectiontierdiamond", 300);
	lootManager->createLoot(inventory, "lootcollectiontierdiamond", 300);
	lootManager->createLoot(inventory, "lootcollectiontierdiamond", 300);
	creature->playEffect("clienteffect/rare_loot.cef", "");
	sceneObject->destroyObjectFromWorld(true);
	return 0;
}
