/**
 * file invisibleCommand.h
 */

#ifndef INVISIBLECOMMAND_H_
#define INVISIBLECOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "QueueCommand.h"
#include "server/zone/objects/creature/events/InvisibleEvent.h"
#include "server/zone/objects/creature/buffs/SingleUseBuff.h"

class InvisibleCommand : public QueueCommand {
public:

    InvisibleCommand(const String& name, ZoneProcessServer* server) :
        QueueCommand(name, server) {
    }

    int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {
        if (!checkStateMask(creature))
            return INVALIDSTATE;

        if (!checkInvalidLocomotions(creature))
            return INVALIDLOCOMOTION;

		if (!creature->isPlayerCreature())
			return GENERALERROR;

        CreatureObject* player = cast<CreatureObject*>(creature);

        Reference<Task*> task = player->getPendingTask("invisibleevent");

        if (task != NULL) {
            Reference<InvisibleEvent*> invisibleTask = task.castTo<InvisibleEvent*>();
            if (invisibleTask == NULL) {
                return GENERALERROR;
	}  if (player->isInCombat()) {
            invisibleTask->removeInvisible();

            return SUCCESS;
        }

            player->sendSystemMessage("Your attempt to go invisible has been canceled.");
            invisibleTask->removeInvisible();

            return SUCCESS;
        }

ManagedReference<PlayerObject*> playerObject = player->getPlayerObject();

        if (player->isDead() || player->isIncapacitated()) {
            player->sendSystemMessage("You cant hide yourself on your back cowboy");
            return GENERALERROR;
        }

        if (player->getParent() != NULL || player->isInCombat()) {
            player->sendSystemMessage("You cant go invisible right now");
            return GENERALERROR;
        }

		creature->playEffect("clienteffect/invisible_effect.cef", "");

        Reference<InvisibleEvent*> invisibleTask = new InvisibleEvent(player);

        player->sendSystemMessage("Your ready to go invisible...soon you will vanish from sight.");
        player->addPendingTask("invisibleevent", invisibleTask, 3000);

        return SUCCESS;
    }
};

#endif //INVISIBLECOMMAND_H_
