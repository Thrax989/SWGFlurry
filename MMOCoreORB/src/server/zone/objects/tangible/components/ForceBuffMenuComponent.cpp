/*
 * ForceBuffMenuComponent.cpp
 * Authors TOXIC
 * Created on: 5/9/2017
 */

#include "ForceBuffMenuComponent.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "server/zone/managers/player/PlayerManager.h"
#include "templates/params/creature/CreatureAttribute.h"
#include "server/zone/packets/player/PlayMusicMessage.h"
#include "server/chat/ChatManager.h"
#include "server/zone/managers/visibility/VisibilityManager.h"
#include "server/zone/objects/player/sui/callbacks/BountyHuntSuiCallback.h"
#include "server/zone/objects/player/sui/inputbox/SuiInputBox.h"


void ForceBuffMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {

	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);

	menuResponse->addRadialMenuItem(20, 3, "Bacta Bomb");
}

int ForceBuffMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* creature, byte selectedID) const {
	if (selectedID != 20)
		return 0;

	creature->playEffect("clienteffect/bacta_bomb.cef", "");
	creature->setPosture(CreaturePosture::UPRIGHT);
	creature->healDamage(creature, CreatureAttribute::HEALTH, 5000);
	creature->healDamage(creature, CreatureAttribute::ACTION, 5000);
	creature->healDamage(creature, CreatureAttribute::MIND, 5000);
	sceneObject->destroyObjectFromWorld(true);
	Zone* zone = creature->getZone();
	//Broadcast to Server
 	String playerName = creature->getFirstName();
 	StringBuffer zBroadcast;
 	zBroadcast << "\\#00E604" << playerName << " \\#63C8F9 Has Used A Event Pack To Revive Their Body;
 	creature->getZoneServer()->getChatManager()->broadcastGalaxy(NULL, zBroadcast.toString());
	return 0;
}
