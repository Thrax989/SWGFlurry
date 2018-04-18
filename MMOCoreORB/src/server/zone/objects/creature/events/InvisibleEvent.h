/**
* file invisibleEvent.h
*/

#ifndef INVISIBLEEVENT_H_
#define INVISIBLEEVENT_H_

#include "engine/engine.h"

#include "server/zone/Zone.h"
#include "server/zone/managers/objectcontroller/ObjectController.h"
//#include "server/zone/objects/creature/CreatureAttribute.h"
#include "server/zone/objects/creature/CreatureObject.h"
//#include "server/zone/objects/creature/events/InvisibleEventObserver.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/packets/chat/ChatSystemMessage.h"
#include "server/zone/packets/scene/PlayClientEffectLocMessage.h"
#include "server/zone/packets/scene/UpdateTransformMessage.h"

class InvisibleEvent : public Task {
protected:
    ManagedReference<CreatureObject*> player;

    bool invisibleApplied;


public:
    InvisibleEvent(CreatureObject* pl) : Task() {
        player = pl;
        invisibleApplied = false;

    }

    virtual ~InvisibleEvent() {
        if (player != NULL) {
        }
    }

    void run() {
        if (player == NULL)
            return;

        Locker playerLocker(player);

        if (!player->isOnline() || player->isIncapacitated()) {
            removeInvisible();
            return;
        }

        if (!invisibleApplied) {
            if (!canApplyInvisible()) {
                player->sendSystemMessage("Your invisiblity could not be applied!");
                return;
            }

            applyInvisible();

            return;
        }

        if (player->getParent() != NULL) {
            player->sendSystemMessage("You cannot maintain your invisiblility here.");

            removeInvisible();
            return;
        }


        if (!canApplyInvisible()) {
            if (player->getParent() != NULL) {
                player->sendSystemMessage("You cannot maintain your cloak here.");
            } else if (player->isInCombat()) {
                player->sendSystemMessage("You cannot maintain your cloak in combat!");
            }

            removeInvisible();
            return;
        }

        if (invisibleApplied && player->isInvisible()) {
        }
    }

    bool getInvisibleApplied() const { return invisibleApplied; }

    void applyInvisible() {
        if (invisibleApplied) {
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

        PlayClientEffectLoc* invisibleLoc = new PlayClientEffectLoc(getClientEffect(), player->getZone()->getZoneName(), player->getPositionX(), player->getPositionZ(), player->getPositionY());
        player->broadcastMessage(invisibleLoc, true);

        player->sendSystemMessage("You invisiblility has been applied.  You vanish from sight.");

        invisibleApplied = true;
    }

    void removeInvisible() {
        if (isScheduled()) {
            cancel();
        }

        player->removePendingTask("invisibleevent");

        if (!invisibleApplied) {
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

        PlayClientEffectLoc* invisibledropLoc = new PlayClientEffectLoc(getClientEffect(), player->getZone()->getZoneName(), player->getPositionX(), player->getPositionZ(), player->getPositionY());
        player->broadcastMessage(invisibledropLoc, true);

        UpdateTransformMessage* msg = new UpdateTransformMessage(player);
        player->broadcastMessage(msg, true);

        player->sendSystemMessage("You invisiblility has been removed.  You are revealed to all.");

        invisibleApplied = false;
    }

    bool canApplyInvisible() {
        return (player->getParent() == NULL) /*&& !player->isInCombat()*/;
    }

protected:
    virtual const char* getClientEffect() const { return "clienteffect/lair_med_damage_smoke.cef"; }

};

#endif /* INVISIBLEEVENT_H_ */
