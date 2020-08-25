/*
 * DotpackMenuComponent.cpp
 *
 *  Created on: 08/24/2020
 *      Author: TOXIC
 */
#include "DotpackMenuComponent.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/managers/loot/LootManager.h"
#include "server/zone/Zone.h"
#include "server/zone/ZoneServer.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "server/zone/objects/group/GroupObject.h"
void DotpackMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {
	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);
	menuResponse->addRadialMenuItem(20, 3, "Use Dot Pack [Clears Dots]");
}
int DotpackMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* creature, byte selectedID) const {
	if (!sceneObject->isTangibleObject())
		return 0;

	if (!creature->isPlayerCreature())
		return 0;

	if (!sceneObject->isASubChildOf(creature))
		return 0;

	if (selectedID == 20) {
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
		return 0;
	}
	return TangibleObjectMenuComponent::handleObjectMenuSelect(sceneObject, creature, selectedID);
}
