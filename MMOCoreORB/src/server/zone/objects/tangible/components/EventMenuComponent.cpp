/*
 * EventMenuComponent.cpp
 *
 *  Created on: 01/01/2020
 *      Author: TOXIC
 */


#include "EventMenuComponent.h"
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

void EventMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {

	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);
	menuResponse->addRadialMenuItem(20, 3, "Open Event Crate");
}

int EventMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const {

	if (!sceneObject->isTangibleObject())
		return 0;

	if (!player->isPlayerCreature())
		return 0;

	if (!sceneObject->isASubChildOf(player))
		return 0;

	if (selectedID != 20)
		return 0;

	PlayerObject* ghost = player->getPlayerObject();
	if (ghost != nullptr) {
 	ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");
 	ManagedReference<LootManager*> lootManager = player->getZoneServer()->getLootManager();
	lootManager->createLoot(inventory, "tiertwo", 300);
	lootManager->createLoot(inventory, "tierthree", 300);
	lootManager->createLoot(inventory, "tierone", 300);
	lootManager->createLoot(inventory, "tierdiamond", 300);
	player->playEffect("clienteffect/level_granted.cef", "");
	ghost->updateeventplayerCrate();
	sceneObject->destroyObjectFromWorld(true);
	sceneObject->destroyObjectFromDatabase(true);	
	}
	return 0;
}
