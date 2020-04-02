/*
 * DetectorZoneComponent.cpp
 *
 *  Created on: Dec 17, 2012
 *      Author: root
 */
#include "server/zone/objects/scene/components/ZoneComponent.h"
#include "DetectorZoneComponent.h"
#include "DetectorDataComponent.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/objects/player/FactionStatus.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/installation/InstallationObject.h"
#include "server/zone/packets/scene/PlayClientEffectLocMessage.h"
#include "server/zone/Zone.h"
#include "server/zone/objects/installation/components/TurretObserver.h"



void DetectorZoneComponent::notifyPositionUpdate(SceneObject* sceneObject, QuadTreeEntry* entry) const {
	ManagedReference<SceneObject*> target = cast<SceneObject*>(entry);
	if(!sceneObject->isTangibleObject() || target == nullptr){
		return;
	}

	ManagedReference<TangibleObject*> tano = cast<TangibleObject*>(sceneObject);

	DataObjectComponentReference* ref = sceneObject->getDataObjectComponent();
	if(ref == nullptr){
		info("data is null",true);
		return;
	}

	DetectorDataComponent* scannerData = cast<DetectorDataComponent*>(ref->get());

	if(scannerData == nullptr || !scannerData->canScan())
		return;

	if(sceneObject->isDetector() && target->isPlayerCreature() && sceneObject->isInRange(target,65)){
		ManagedReference<CreatureObject*> player = cast<CreatureObject*>(entry);
		if(player == nullptr)
			return;

		ManagedReference<PlayerObject*> playerObject = player->getPlayerObject();

		if(playerObject == nullptr)
			return;

		ManagedReference<InstallationObject*> installation = cast<InstallationObject*>(sceneObject);
		if(installation == nullptr)
			return;
		ManagedReference<TurretObserver*> observer = new TurretObserver();
		installation->registerObserver(ObserverEventType::OBJECTDESTRUCTION,observer);

		if(tano->getFaction() != player->getFaction() && player->getFaction() != 0 ){

			if (tano->getFactionStatus() == FactionStatus::COVERT)
			 	 tano->setFactionStatus(FactionStatus::OVERT);

			scannerData->updateCooldown();
			PlayClientEffectLoc* explodeLoc = new PlayClientEffectLoc("clienteffect/survey_effect.cef", tano->getZone()->getZoneName(), tano->getPositionX(), tano->getPositionZ(), tano->getPositionY());
			tano->broadcastMessage(explodeLoc, false);
			playerObject->updateLastPvpCombatActionTimestamp(true, false);

		}

	}

	return;

}





