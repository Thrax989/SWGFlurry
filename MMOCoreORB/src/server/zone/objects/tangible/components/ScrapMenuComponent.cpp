/*
 * ScrapMenuComponent.cpp
 *
 *  Created on: 09/25/2017
 *      Author: TOXIC
 */

#include "ScrapMenuComponent.h"
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

void ScrapMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {

	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);
		ManagedReference<BuildingObject*> building = cast<BuildingObject*>(player->getRootParent());

	// If outside don't bother doing anything ...
	if (!building == NULL) {
		player->sendSystemMessage("Error");
		return false;
	}
	menuResponse->addRadialMenuItem(20, 3, "Scrap Item");
}

int ScrapMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* creature, byte selectedID) const {

	if (selectedID != 20)
		return 0;
	creature->addCashCredits(100, true);
	creature->sendSystemMessage("You have received 100 Credits for recycling an item");
	sceneObject->destroyObjectFromWorld(true);
	return 0;
}
