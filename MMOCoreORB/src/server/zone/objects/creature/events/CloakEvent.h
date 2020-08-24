/*
                Copyright <SWGEmu>
        See file COPYING for copying conditions. */

#ifndef CLOAKEVENT_H_
#define CLOAKEVENT_H_

#include "engine/engine.h"

#include "server/zone/Zone.h"
#include "server/zone/managers/objectcontroller/ObjectController.h"
//#include "server/zone/objects/creature/CreatureAttribute.h"
#include "templates/params/creature/CreatureAttribute.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/creature/events/CloakEventObserver.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/packets/chat/ChatSystemMessage.h"
#include "server/zone/packets/scene/PlayClientEffectLocMessage.h"
#include "server/zone/packets/scene/UpdateTransformMessage.h"

namespace
{
    const static int tickTime = 10 * 1000;
}

class CloakEvent : public Task, public Logger {
protected:
    ManagedReference<CreatureObject*> player;
    ManagedReference<CloakEventObserver*> observer;

    bool receivedDamage;
    bool cloakApplied;

    friend class CloakDamageObserver;

public:
    CloakEvent(CreatureObject* pl) : Task(), Logger() {
        player = pl;
        receivedDamage = false;
        cloakApplied = false;

        if (player != NULL) {
            observer = new CloakEventObserver(player);
            player->registerObserver(ObserverEventType::DAMAGERECEIVED, observer);
        }

        Logger::setLoggingName("CloakEvent");
        Logger::setLogging(true);
    }

    virtual ~CloakEvent() {
        if (player != NULL && observer != NULL) {
            player->dropObserver(ObserverEventType::DAMAGERECEIVED, observer);
            observer = NULL;
        }
    }

    void run() {
        if (player == NULL)
            return;

        Locker playerLocker(player);

        if (!player->isOnline() || player->isIncapacitated()) {
            removeCloak();
            return;
        }

        if (!cloakApplied) {
            if (!canApplyCloak()) {
                player->sendSystemMessage("cloak could not be applied!");
                return;
            }

            processCost();
            applyCloak();

            reschedule(tickTime);
            return;
        }

        if (player->getParent() != NULL) {
            player->sendSystemMessage("You cannot maintain your cloak here.");

            removeCloak();
            return;
        }

        if (!canApplyCloak()) {
            if (player->getParent() != NULL) {
                player->sendSystemMessage("You cannot maintain your cloak here.");
            }
            else if (!hasResourcesForCloak()) {
                player->sendSystemMessage("You lack the strength needed to maintain your cloak.");
            }
            else if (player->isInCombat() || receivedDamage) {
                player->sendSystemMessage("You cannot maintain your cloak in combat!");
            }

            removeCloak();
            return;
        }

        if (cloakApplied && player->isInvisible()) {
            processCost();
            reschedule(tickTime);
        }
    }

    static int getActionCost() { return 400; }

    bool getCloakApplied() const { return cloakApplied; }

    void notifyDamageReceived(ManagedObject* managedObj) {
        receivedDamage = true;

        if (!cloakApplied) {
            player->sendSystemMessage("cloak could not be applied!");
        }

        // removeCloak handles some task cancellation, so we want to call it regardless
        // of whether the cloak was applied
        removeCloak();
    }

    void applyCloak() {
        if (cloakApplied) {
            return;
        }

        player->setInvisible(true);

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
        PlayClientEffectLoc* cloakLoc = new PlayClientEffectLoc(getClientEffect(), player->getZone()->getZoneName(), player->getPositionX(), player->getPositionZ(), player->getPositionY());
        player->broadcastMessage(cloakLoc, true);

        player->sendSystemMessage("cloak has been applied");

        cloakApplied = true;
    }

    void removeCloak() {
        if (isScheduled()) {
            cancel();
        }

        player->removePendingTask("cloakevent");

        if (!cloakApplied) {
            return;
        }

        player->setInvisible(false);

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
        PlayClientEffectLoc* cloakdropLoc = new PlayClientEffectLoc(getClientEffect(), player->getZone()->getZoneName(), player->getPositionX(), player->getPositionZ(), player->getPositionY());
        player->broadcastMessage(cloakdropLoc, true);

        UpdateTransformMessage* msg = new UpdateTransformMessage(player);
        player->broadcastMessage(msg, true);

        player->sendSystemMessage("Your cloak has been removed");

        cloakApplied = false;
    }

    bool canApplyCloak() {
        return (player->getParent() == NULL) && hasResourcesForCloak() && !player->isInCombat() && !receivedDamage;
    }

protected:
    virtual const char* getClientEffect() const { return "clienteffect/pl_force_speed_self.cef"; }

    virtual void processCost() {
        player->inflictDamage(player, CreatureAttribute::ACTION, 400, true);

        if (cloakApplied) {
            player->sendSystemMessage("Your energy drains to keep you hidden");
        }
    }

    virtual int hasResourcesForCloak() {
        return player->getHAM(CreatureAttribute::ACTION) >= getActionCost();
    }
};

#endif /* CLOAKEVENT_H_ */
