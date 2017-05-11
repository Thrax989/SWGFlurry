/*
 * ForceBuffMenuComponent.cpp
 * Authors TOXIC
 * Created on: 5/9/2017
 */

#include "ForceBuffMenuComponent.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "server/zone/ZoneServer.h"
#include "ForceShrineMenuComponent1.h"
#include "server/zone/objects/player/sui/messagebox/SuiMessageBox.h"
#include "server/zone/managers/skill/SkillManager.h"
#include "server/zone/managers/player/PlayerManager.h"
#include "server/zone/packets/player/PlayMusicMessage.h"
#include "server/zone/managers/creature/CreatureManager.h"
#include "server/zone/objects/region/CityRegion.h"
#include "server/zone/packets/player/PlayMusicMessage.h"
#include "server/chat/ChatManager.h"
#include "server/zone/managers/visibility/VisibilityManager.h"
#include "server/zone/objects/player/sui/callbacks/BountyHuntSuiCallback.h"
#include "server/zone/objects/player/sui/inputbox/SuiInputBox.h"
#include "templates/params/creature/CreatureAttribute.h"


void ForceBuffMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {

	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);

	menuResponse->addRadialMenuItem(20, 3, "Bacta Bomb");
}

int ForceBuffMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* creature, byte selectedID) const {
	if (selectedID != 20)
		return 0;

	creature->playEffect("clienteffect/bacta_bomb.cef", "");
	creature->healDamage(creature, CreatureAttribute::HEALTH, 5000);
	creature->healDamage(creature, CreatureAttribute::ACTION, 5000);
	creature->healDamage(creature, CreatureAttribute::MIND, 5000);
	creature->setPosture(CreaturePosture::UPRIGHT);
	sceneObject->destroyObjectFromWorld(true);
	return 0;
}
