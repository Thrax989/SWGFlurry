/*
 * NewMemberMenuComponent.cpp
 *
 *  Created on: 10/12/2017
 *      Author: TOXIC -- Editted by Slayer
 */

#include "NewMemberMenuComponent.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/ZoneServer.h"
#include "server/zone/managers/loot/LootManager.h"
#include "server/zone/managers/player/PlayerManager.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "server/zone/managers/resource/ResourceManager.h"

void NewMemberMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {

	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);

	menuResponse->addRadialMenuItem(20, 3, "Get Supplies");
}

int NewMemberMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* creature, byte selectedID) const {

	if (!sceneObject->isTangibleObject())
		return 0;

	if (!creature->isPlayerCreature())
		return 0;

	if (!sceneObject->isASubChildOf(creature))
		return 0;

	if (selectedID != 20)
		return 0;

	ResourceManager* manager = creature->getZoneServer()->getResourceManager();

	ResourceSpawn* recycledVersionIron = manager->getRecycledVersionByType("iron_smelted");

	manager->harvestResourceToPlayer(creature, recycledVersionIron, 1000);

	ResourceSpawn* recycledVersionGas = manager->getRecycledVersionByType("gas_inert_mixed");

	manager->harvestResourceToPlayer(creature, recycledVersionGas, 1000);

	ResourceSpawn* recycledVersionSteel = manager->getRecycledVersionByType("steel_smelted");

	manager->harvestResourceToPlayer(creature, recycledVersionSteel, 1000);

	ResourceSpawn* recycledVersionAluminum = manager->getRecycledVersionByType("aluminum_smelted");

	manager->harvestResourceToPlayer(creature, recycledVersionAluminum, 1000);

	ResourceSpawn* recycledVersionCopper = manager->getRecycledVersionByType("copper_smelted");

	manager->harvestResourceToPlayer(creature, recycledVersionCopper, 1000);

	ResourceSpawn* recycledVersionCarbonate = manager->getRecycledVersionByType("ore_carbonate_low_grade");

	manager->harvestResourceToPlayer(creature, recycledVersionCarbonate, 1000);

	ResourceSpawn* recycledVersionGemstone = manager->getRecycledVersionByType("gemstone_mixed_low_quality");

	manager->harvestResourceToPlayer(creature, recycledVersionGemstone, 1000);

	ResourceSpawn* recycledVersionChemical = manager->getRecycledVersionByType("chemical_compound");

	manager->harvestResourceToPlayer(creature, recycledVersionChemical, 1000);

	ResourceSpawn* recycledVersionWater = manager->getRecycledVersionByType("water_solution");

	manager->harvestResourceToPlayer(creature, recycledVersionWater, 1000);

	ResourceSpawn* recycledVersionWood = manager->getRecycledVersionByType("processed_wood");

	manager->harvestResourceToPlayer(creature, recycledVersionWood, 1000);
 	
	ResourceSpawn* recycledVersionHide = manager->getRecycledVersionByType("synthesized_hides");

	manager->harvestResourceToPlayer(creature, recycledVersionHide, 1000);

	ResourceSpawn* recycledVersionBone = manager->getRecycledVersionByType("ground_bones");

	manager->harvestResourceToPlayer(creature, recycledVersionBone, 1000);

	sceneObject->destroyObjectFromWorld(true);
	sceneObject->destroyObjectFromDatabase(true);
	return 0;
}
