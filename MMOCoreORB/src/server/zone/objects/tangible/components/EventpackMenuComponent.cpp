/*
 * EventpackMenuComponent.cpp
 *
 *  Created on: 07/09/2021
 *      Author: TOXIC
 */
#include "EventpackMenuComponent.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/managers/loot/LootManager.h"
#include "server/zone/Zone.h"
#include "server/zone/ZoneServer.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "server/zone/objects/group/GroupObject.h"
#include "templates/params/creature/CreatureAttribute.h"

void EventpackMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {
	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);
	menuResponse->addRadialMenuItem(20, 3, "Use Event Pack [Revive]");
}
int EventpackMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* creature, byte selectedID) const {
	if (!sceneObject->isTangibleObject())
		return 0;

	if (!creature->isPlayerCreature())
		return 0;

	if (!sceneObject->isASubChildOf(creature))
		return 0;

	if (selectedID == 20) {
					ManagedReference<GroupObject*> group = creature->getGroup();
				if (group == nullptr) {
					creature->healDamage(creature, CreatureAttribute::HEALTH, 15000);
					creature->healDamage(creature, CreatureAttribute::ACTION, 15000);
					creature->healDamage(creature, CreatureAttribute::MIND, 15000);
					for (int i = 0; i < 9; ++i) {
						creature->setWounds(i, 0);
					}
					creature->setShockWounds(0);
					creature->clearDots();
					creature->removeFeignedDeath();
					creature->setPosture(CreaturePosture::UPRIGHT);
					creature->notifyObservers(ObserverEventType::CREATUREREVIVED, creature, 0);
					creature->broadcastPvpStatusBitmask();
				   }		
				if (group != nullptr) {
					for (int i = 0; i < group->getGroupSize(); i++) {
					ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);
					if (groupedCreature != nullptr && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 30.0f) && groupedCreature != creature) {
					Locker locker(groupedCreature);
					groupedCreature->healDamage(groupedCreature, CreatureAttribute::HEALTH, 15000);
					groupedCreature->healDamage(groupedCreature, CreatureAttribute::ACTION, 15000);
					groupedCreature->healDamage(groupedCreature, CreatureAttribute::MIND, 15000);
					for (int i = 0; i < 9; ++i) {
						groupedCreature->setWounds(i, 0);
					}
					groupedCreature->setShockWounds(0);
					groupedCreature->clearDots();
					groupedCreature->removeFeignedDeath();
					groupedCreature->setPosture(CreaturePosture::UPRIGHT);
					groupedCreature->notifyObservers(ObserverEventType::CREATUREREVIVED, groupedCreature, 0);
					groupedCreature->broadcastPvpStatusBitmask();
					locker.release();
					}
				}
				creature->healDamage(creature, CreatureAttribute::HEALTH, 15000);
					creature->healDamage(creature, CreatureAttribute::ACTION, 15000);
					creature->healDamage(creature, CreatureAttribute::MIND, 15000);
					for (int i = 0; i < 9; ++i) {
						creature->setWounds(i, 0);
					}
					creature->setShockWounds(0);
					creature->clearDots();
					creature->removeFeignedDeath();
					creature->setPosture(CreaturePosture::UPRIGHT);
					creature->notifyObservers(ObserverEventType::CREATUREREVIVED, creature, 0);
					creature->broadcastPvpStatusBitmask();
		}
		return 0;
	}
	return TangibleObjectMenuComponent::handleObjectMenuSelect(sceneObject, creature, selectedID);
}
