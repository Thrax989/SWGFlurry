/**
* file ForceCloakEvent.h
*/

#ifndef FORCECLOAKEVENT_H_
#define FORCECLOAKEVENT_H_

#include "engine/engine.h"

#include "server/zone/Zone.h"
#include "server/zone/managers/objectcontroller/ObjectController.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/packets/chat/ChatSystemMessage.h"
#include "server/zone/packets/scene/PlayClientEffectLocMessage.h"
#include "server/zone/packets/scene/UpdateTransformMessage.h"

class ForceCloakEvent : public Task {
protected:
    ManagedReference<CreatureObject*> player;

    bool forcecloakApplied;


public:
    ForceCloakEvent(CreatureObject* pl) : Task() {
        player = pl;
        forcecloakApplied = false;

    }

    virtual ~ForceCloakEvent() {
        if (player != NULL) {
        }
    }

    void run() {
        if (player == NULL)
            return;

        Locker playerLocker(player);

        if (!player->isOnline() || player->isIncapacitated()) {
            removeForceCloak();
            return;
        }

        if (!forcecloakApplied) {
            if (!canApplyForceCloak()) {
                player->sendSystemMessage("Your force cloak could not be applied!");
                return;
            }

            applyForceCloak();

            return;
        }

        if (player->getParent() != NULL) {
            player->sendSystemMessage("You cannot maintain your forec cloak here.");

            removeForceCloak();
            return;
        }


        if (!canApplyForceCloak()) {
            if (player->getParent() != NULL) {
                player->sendSystemMessage("You cannot maintain your cloak here.");
            } else if (player->isInCombat()) {
                player->sendSystemMessage("You cannot maintain your cloak in combat!");
            }

            removeForceCloak();
            return;
        }

        if (forcecloakApplied && player->isForceCloak()) {
        }
    }

    bool getForceCloakApplied() const { return forcecloakApplied; }

    void applyForceCloak() {
        if (forcecloakApplied) {
            return;
        }

        player->setForceCloak(true);

	SortedVector<QuadTreeEntry*> closeObjects(512,512);
	CloseObjectsVector* closeVector = (CloseObjectsVector*) player->getCloseObjects();
	
	if (closeVector == NULL) {
			player->getZone()->getInRangeObjects(player->getPositionX(), player->getPositionY(), 32, &closeObjects, true);
		} else {
			closeVector->safeCopyTo(closeObjects);
	}

	for (int i = 0; i < closeObjects.size(); i++) {
		SceneObject* targetObject = static_cast<SceneObject*>(closeObjects.get(i));
		
			if (targetObject != NULL && !targetObject->isBuildingObject())
				targetObject->notifyDissapear(player);
	}

        PlayClientEffectLoc* forcecloakLoc = new PlayClientEffectLoc(getClientEffect(), player->getZone()->getZoneName(), player->getPositionX(), player->getPositionZ(), player->getPositionY());
        player->broadcastMessage(forcecloakLoc, true);

        player->sendSystemMessage("You force cloak has been applied.  You vanish from sight.");

        forcecloakApplied = true;
    }

    void removeForceCloak() {
        if (isScheduled()) {
            cancel();
        }

        player->removePendingTask("forcecloakevent");

        if (!forcecloakApplied) {
            return;
        }

        player->setForceCloak(false);

	SortedVector<QuadTreeEntry*> closeObjects(512,512);
	CloseObjectsVector* closeVector = (CloseObjectsVector*) player->getCloseObjects();
	
	if (closeVector == NULL) {
			player->getZone()->getInRangeObjects(player->getPositionX(), player->getPositionY(), 32, &closeObjects, true);
		} else {
			closeVector->safeCopyTo(closeObjects);
	}

	for (int i = 0; i < closeObjects.size(); i++) {
		SceneObject* targetObject = static_cast<SceneObject*>(closeObjects.get(i));
		
			if (targetObject != NULL && !targetObject->isBuildingObject())
				targetObject->notifyInsert(player);
	}

        PlayClientEffectLoc* forcecloakdropLoc = new PlayClientEffectLoc(getClientEffect(), player->getZone()->getZoneName(), player->getPositionX(), player->getPositionZ(), player->getPositionY());
        player->broadcastMessage(forcecloakdropLoc, true);

        UpdateTransformMessage* msg = new UpdateTransformMessage(player);
        player->broadcastMessage(msg, true);

        player->sendSystemMessage("You force cloak has been removed.  You are revealed to all.");

        forcecloakApplied = false;
    }

    bool canApplyForceCloak() {
        return (player->getParent() == NULL) /*&& !player->isInCombat()*/;
    }

protected:
    virtual const char* getClientEffect() const { return "clienteffect/lair_med_damage_smoke.cef"; }

};

#endif /* FORCECLOAKEVENT_H_ */
