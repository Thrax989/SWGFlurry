/*
                Copyright <SWGEmu>
        See file COPYING for copying conditions. */

#ifndef CLOAKCOMMAND_H_
#define CLOAKCOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "QueueCommand.h"
#include "server/zone/objects/creature/events/CloakEvent.h"

class CloakCommand : public QueueCommand {
public:

    CloakCommand(const String& name, ZoneProcessServer* server) :
        QueueCommand(name, server) {
    }

    int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {
        if (!checkStateMask(creature))
            return INVALIDSTATE;

        if (!checkInvalidLocomotions(creature))
            return INVALIDLOCOMOTION;

        CreatureObject* player = cast<CreatureObject*>(creature);

        // Check for ranger
        if (!creature->hasSkill("outdoors_ranger_master"))
            return GENERALERROR;

        int nSkill = 0;
        if (creature->hasSkill("force_title_jedi_rank_02"))
            nSkill += 1;

        if (nSkill > 0) {
            creature->sendSystemMessage("You are trying to use a top level skill while being invested in jedi skills, "
                "you must devote yourself to science and not mystic arts before using this command.");
            return GENERALERROR;
        }

        Reference<Task*> task = player->getPendingTask("cloakevent");

        if (task != NULL) {
            Reference<CloakEvent*> cloakTask = task.castTo<CloakEvent*>();
            if (cloakTask == NULL) {
                return GENERALERROR;
            }

            player->sendSystemMessage("You attempt to cloak has been canceled.");
            cloakTask->removeCloak();

            return SUCCESS;
        }

        ManagedReference<PlayerObject*> playerObject = player->getPlayerObject();

        if (player->getHAM(CreatureAttribute::ACTION) < CloakEvent::getActionCost()) {
            player->sendSystemMessage("You lack the strength to cloak yourself.");
            return GENERALERROR;
        }

        if (player->isDead() || player->isIncapacitated()) {
            player->sendSystemMessage("You cant hide yourself on your back cowboy");
            return GENERALERROR;
        }

        if (player->getParent() != NULL || player->isInCombat()) {
            player->sendSystemMessage("You cant cloak right now");
            return GENERALERROR;
        }

        Reference<CloakEvent*> cloakTask = new CloakEvent(player);

        player->sendSystemMessage("You ready your cloak...soon you will vanish from sight.");
        player->addPendingTask("cloakevent", cloakTask, 3000);

        return SUCCESS;
    }
};

#endif //CLOAKCOMMAND_H_