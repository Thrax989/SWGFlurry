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

void BossMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {

	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);
	ManagedReference<PlayerObject*> ghost = player->getPlayerObject();
	        menuResponse->addRadialMenuItem(213, 3, "Mini Boss 1"); //MINI BOSS ENCOUNTER 1
		menuResponse->addRadialMenuItem(214, 3, "Mini Boss 2"); //MINI BOSS ENCOUNTER 2
		menuResponse->addRadialMenuItem(215, 3, "Mini Boss 3"); //MINI BOSS ENCOUNTER 3
		menuResponse->addRadialMenuItem(216, 3, "Mini Boss 4"); //MINI BOSS ENCOUNTER 4
		menuResponse->addRadialMenuItem(217, 3, "Mini Boss 5"); //MINI BOSS ENCOUNTER 5
		menuResponse->addRadialMenuItem(220, 3, "Heroic Boss Instances");
		menuResponse->addRadialMenuItemToRadialID(220, 221, 3, "BOSS 1"); //BOSS ENCOUNTER 1
		menuResponse->addRadialMenuItemToRadialID(220, 222, 3, "BOSS 2"); //BOSS ENCOTUNER 2
		menuResponse->addRadialMenuItemToRadialID(220, 223, 3, "BOSS 3"); //BOSS ENCOUNTER 3
		menuResponse->addRadialMenuItemToRadialID(220, 224, 3, "BOSS 4"); //BOSS ENCOUNTER 4
		menuResponse->addRadialMenuItemToRadialID(220, 225, 3, "BOSS 5"); //BOSS ENCOUNTER 5
		menuResponse->addRadialMenuItemToRadialID(220, 226, 3, "BOSS 6"); //BOSS ENCOUNTER 6
		menuResponse->addRadialMenuItemToRadialID(220, 227, 3, "BOSS 7"); //BOSS ENCOUNTER 7
		menuResponse->addRadialMenuItemToRadialID(220, 228, 3, "BOSS 8"); //BOSS ENCOUNTER 8
}
int BossMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* creature, byte selectedID) const {
	if (selectedID == 213) {
//SAVED FOR MINI BOSS ENCOUNTER TELEPORT 1
	}
	if (selectedID == 214) {
//SAVED FOR MINI BOSS ENCOUNTER TELEPORT 2
	}
	if (selectedID == 215) {
//SAVED FOR MINI BOSS ENCOUNTER TELEPORT 3
	}
	if (selectedID == 216) {
//SAVED FOR MINI BOSS ENCOUNTER TELEPORT 4
	}
	if (selectedID == 217) {
//SAVED FOR MINI BOSS ENCOUNTER TELEPORT 5
	}
	if (selectedID == 221) {
//SAVED FOR BOSS ENCOUNTER TELEPORT 1
	}
	if (selectedID == 222) {
//SAVED FOR BOSS ENCOUNTER TELEPORT 2
	}
	if (selectedID == 223) {
//SAVED FOR BOSS ENCOUNTER TELEPORT 3
	}
	if (selectedID == 224) {
//SAVED FOR BOSS ENCOUNTER TELEPORT 4
	}
	if (selectedID == 225) {
//SAVED FOR BOSS ENCOUNTER TELEPORT 5
	}
	if (selectedID == 226) {
//SAVED FOR BOSS ENCOUNTER TELEPORT 6
	}
	if (selectedID == 227) {
//SAVED FOR BOSS ENCOUNTER TELEPORT 7
	}
	if (selectedID == 228) {
//SAVED FOR BOSS ENCOUNTER TELEPORT 8
	}
	return 0;
}