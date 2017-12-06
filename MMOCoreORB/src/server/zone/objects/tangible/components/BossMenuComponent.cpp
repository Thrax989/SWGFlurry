/*
* BossMenuComponent.cpp
*
* Created on: 11/28/2017
*	 Author: Toxic
*  
*/

#include "BossMenuComponent.h"
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

#include "server/zone/objects/group/GroupObject.h"

void BossMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {

	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);
	ManagedReference<PlayerObject*> ghost = player->getPlayerObject();
	        menuResponse->addRadialMenuItem(213, 3, "Mini Boss 1"); //MINI BOSS ENCOUNTER 1
		menuResponse->addRadialMenuItem(214, 3, "Mini Boss 2"); //MINI BOSS ENCOUNTER 2
		menuResponse->addRadialMenuItem(215, 3, "Mini Boss 3"); //MINI BOSS ENCOUNTER 3
		menuResponse->addRadialMenuItem(216, 3, "Mini Boss 4"); //MINI BOSS ENCOUNTER 4
		menuResponse->addRadialMenuItem(217, 3, "Mini Boss 5"); //MINI BOSS ENCOUNTER 5
		menuResponse->addRadialMenuItem(220, 3, "Heroic Boss Instances");
		menuResponse->addRadialMenuItemToRadialID(220, 221, 3, "Exar Kun Tomb"); //BOSS ENCOUNTER 1
		menuResponse->addRadialMenuItemToRadialID(220, 222, 3, "Avatar Platform"); //BOSS ENCOTUNER 2
		menuResponse->addRadialMenuItemToRadialID(220, 223, 3, "Hoth Echo Base"); //BOSS ENCOUNTER 3
		menuResponse->addRadialMenuItemToRadialID(220, 224, 3, "IG-88"); //BOSS ENCOUNTER 4
		menuResponse->addRadialMenuItemToRadialID(220, 225, 3, "Imperial Star Destroyer"); //BOSS ENCOUNTER 5
		menuResponse->addRadialMenuItemToRadialID(220, 226, 3, "Myyydril"); //BOSS ENCOUNTER 6
		menuResponse->addRadialMenuItemToRadialID(220, 227, 3, "NightSister Queen"); //BOSS ENCOUNTER 7
		menuResponse->addRadialMenuItemToRadialID(220, 228, 3, "Rogue Star Destroyer"); //BOSS ENCOUNTER 8
}
int BossMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* creature, byte selectedID) const {
	if (selectedID == 213) {

		ManagedReference<GroupObject*> group = creature->getGroup();

		if (group != NULL) {
			for (int i = 0; i < group->getGroupSize(); i++) {
				ManagedReference<CreatureObject*> groupedCreature = group->getGroupMember(i);

				if (groupedCreature != NULL && groupedCreature->isCreatureObject() && groupedCreature->isInRange(creature, 30.0f) && groupedCreature != creature) {
						Locker locker(groupedCreature);
		                                groupedCreature->switchZone("corellia", 0, 0, 0);
						locker.release();
				}
			}
			sceneObject->destroyObjectFromWorld(true);
			creature->switchZone("corellia", 0, 0, 0);
		}
	}

	if (selectedID == 214) {
		creature->sendSystemMessage("Prepair for the boss fight!.");
		creature->switchZone("corellia", 0, 0, 0);
		sceneObject->destroyObjectFromWorld(true);
	}
	if (selectedID == 215) {
		creature->sendSystemMessage("Prepair for the boss fight!.");
		creature->switchZone("corellia", 0, 0, 0);
		sceneObject->destroyObjectFromWorld(true);
	}
	if (selectedID == 216) {
		creature->sendSystemMessage("Prepair for the boss fight!.");
		creature->switchZone("corellia", 0, 0, 0);
		sceneObject->destroyObjectFromWorld(true);
	}
	if (selectedID == 217) {
		creature->sendSystemMessage("Prepair for the boss fight!.");
		creature->switchZone("corellia", 0, 0, 0);
		sceneObject->destroyObjectFromWorld(true);
	}
	if (selectedID == 221) {
		creature->sendSystemMessage("Prepair for the boss fight!.");
		creature->switchZone("dungeon2", -11.5, 0.2, -121.8, 14200872);
		sceneObject->destroyObjectFromWorld(true);
	}
	if (selectedID == 222) {
		creature->sendSystemMessage("Prepair for the boss fight!.");
		creature->switchZone("dungeon2", 6193, 250, -5978, 0);
		sceneObject->destroyObjectFromWorld(true);
	}
	if (selectedID == 223) {
		creature->sendSystemMessage("Prepair for the boss fight!.");
		creature->switchZone("dungeon2", 89.1, -14.7, 300.1, 14201134);
		sceneObject->destroyObjectFromWorld(true);
	}
	if (selectedID == 224) {
		creature->sendSystemMessage("Prepair for the boss fight!.");
		creature->switchZone("dungeon2", 0.1, 0.0, 42.2, 14200863);
		sceneObject->destroyObjectFromWorld(true);
	}
	if (selectedID == 225) {
		creature->sendSystemMessage("Prepair for the boss fight!.");
		creature->switchZone("dungeon2", 13.9, 173.8, 14.6, 14201198);
		sceneObject->destroyObjectFromWorld(true);
	}
	if (selectedID == 226) {
		creature->sendSystemMessage("Prepair for the boss fight!.");
		creature->switchZone("kashyyyk", -4.685, -1.02156, -4.1078, 6296349);
		sceneObject->destroyObjectFromWorld(true);
	}
	if (selectedID == 227) {
		creature->sendSystemMessage("Prepair for the boss fight!.");
		creature->switchZone("dungeon2", 19.3, 0.1, 0.5, 14201104);
		sceneObject->destroyObjectFromWorld(true);
	}
	if (selectedID == 228) {
		creature->sendSystemMessage("Prepair for the boss fight!.");
		creature->switchZone("dungeon1", 7, 172.3, 300, 4336867);
		sceneObject->destroyObjectFromWorld(true);
	}
	return 0;
}
