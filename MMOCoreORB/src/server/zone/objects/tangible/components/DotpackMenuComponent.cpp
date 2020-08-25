/*
 * DotpackMenuComponent.cpp
 *
 *  Created on: 08/24/2020
 *      Author: TOXIC
 */

#include "DotpackMenuComponent.h"
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
#include "server/zone/objects/group/GroupObject.h"

void DotpackMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {

	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);
	ManagedReference<BuildingObject*> building = cast<BuildingObject*>(player->getRootParent());
	// If outside dispaly menu options, if inside a building show nothing.
	if (building == nullptr) {
	menuResponse->addRadialMenuItem(20, 3, "Use Dot Pack [Clears Dots]");
	}
}

int DotpackMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* creature, byte selectedID) const {
	ManagedReference<BuildingObject*> building = cast<BuildingObject*>(creature->getRootParent());

	// If outside dispaly menu options, if inside a building show nothing.
	if (building == nullptr) {
	if (selectedID != 20)
		return 0;

	ManagedReference<GroupObject*> group = creature->getGroup();
	if (group == nullptr) {
				creature->clearDots();
				creature->playEffect("clienteffect/level_granted.cef", "");
				sceneObject->destroyObjectFromWorld(true);
				   }		
		if (group != nullptr) {
			for (int i = 0; i < group->getGroupSize(); i++) {
					ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);
					if (groupedCreature != nullptr && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 30.0f) && groupedCreature != creature) {
					Locker locker(groupedCreature);
					groupedCreature->clearDots();
					groupedCreature->playEffect("clienteffect/level_granted.cef", "");
					locker.release();
				}
			}
			creature->clearDots();
			creature->playEffect("clienteffect/level_granted.cef", "");
			sceneObject->destroyObjectFromWorld(true);
		}
	}		
	return 0;
}
