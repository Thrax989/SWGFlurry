/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef DRAGFROMSHADOWSCOMMAND_H_
#define DRAGFROMSHADOWSCOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/managers/player/PlayerManager.h"
#include "server/zone/packets/scene/UpdateTransformMessage.h"
#include "server/zone/packets/chat/ChatSystemMessage.h"
#include "server/zone/Zone.h"
#include "server/zone/objects/creature/buffs/SingleUseBuff.h"

class DragFromShadowsCommand : public QueueCommand {
public:

	DragFromShadowsCommand(const String& name, ZoneProcessServer* server)
		: QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		float range = 64.0;

		CreatureObject* player = cast<CreatureObject*>(creature);

		if (!creature->checkCooldownRecovery("drag")) {
   			StringIdChatParameter stringId;

   			Time* cdTime = creature->getCooldownTime("drag");

   			int timeLeft = floor((float)cdTime->miliDifference() / 1000) *-1;

   			stringId.setStringId("@innate:equil_wait"); // You are still recovering from your last Command available in %DI seconds.
   			stringId.setDI(timeLeft);
   			creature->sendSystemMessage(stringId);
   			        return GENERALERROR;
   		       }

 		player->addCooldown("drag", 420 * 1000); // 10 second cooldown
		player->playEffect("clienteffect/survey_effect.cef");


		//Retrieve nearby objects
        SortedVector<ManagedReference<QuadTreeEntry*>> closeObjects;
        Zone* zone = creature->getZone();
 
        if (creature->getCloseObjects() == NULL) {
            zone->getInRangeObjects(creature->getPositionX(), creature->getPositionY(), range, &closeObjects, true);
        }
        else {
            CloseObjectsVector* closeVector = (CloseObjectsVector*) creature->getCloseObjects();
            closeVector->safeCopyTo(closeObjects);
        }
 
        int count = 0;
 
        for (int i = 0; i < closeObjects.size(); i++) {
            SceneObject* targetObject = cast<SceneObject*>(closeObjects.get(i).get());
            if (targetObject->isPlayerCreature()) {
                ManagedReference<CreatureObject*> targetPlayer = cast<CreatureObject*>(targetObject);
 
                Locker locker(targetPlayer, creature);
 
                if (creature->isInRange(targetPlayer, range) && targetPlayer->isPlayerCreature()) {
                    //TURN targetPlayer VISIBLE

					if (targetPlayer != NULL && targetPlayer->isInvisible()) {
						targetPlayer->removePendingTask("invisibleevent");
						targetPlayer->sendSystemMessage("You are now visible to all players and creatures.");
						targetPlayer->setInvisible(false);

						SortedVector<QuadTreeEntry*> closeObjects(512,512);
						CloseObjectsVector* closeVector = (CloseObjectsVector*) targetPlayer->getCloseObjects();
				
						if (closeVector == NULL) {
							targetPlayer->getZone()->getInRangeObjects(targetPlayer->getPositionX(), targetPlayer->getPositionY(), 32, &closeObjects, true);
						} else {
							closeVector->safeCopyTo(closeObjects);
						}

						for (int i = 0; i < closeObjects.size(); i++) {
							SceneObject* targetObject = static_cast<SceneObject*>(closeObjects.get(i));
					
							if (targetObject != NULL && !targetObject->isBuildingObject())
								targetObject->notifyInsert(targetPlayer);
						}
					}
 
                    ++count;
                }
            }
        }
        return SUCCESS;
	}
};

#endif //DRAGFROMSHADOWSCOMMAND_H_
