/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef INVISIBLECOMMAND_H_
#define INVISIBLECOMMAND_H_

#include "server/zone/objects/creature/events/InvisibleEvent.h"

class InvisibleCommand : public QueueCommand {
public:

	InvisibleCommand(const String& name, ZoneProcessServer* server)
		: QueueCommand(name, server) {

	}

	void setPetsPvpStatusBitMask(CreatureObject* player, int mask) const {
		Reference<PlayerObject*> ghost = player->getPlayerObject();

		for (int i = 0; i < ghost->getActivePetsSize(); i++) {
			Reference<AiAgent*> pet = ghost->getActivePet(i);

			if (pet != NULL) {
				Locker clocker(pet, player);
				pet->setPvpStatusBitmask(mask);
			}
		}
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		if (!creature->isPlayerCreature())
			return GENERALERROR;

		CreatureObject* player = cast<CreatureObject*>(creature);

		if (player->isRidingMount())
			return GENERALERROR;
				
		creature->playEffect("clienteffect/lair_med_damage_smoke.cef");

		if (creature->isPlayerCreature()) {
		Reference<Task*> task = creature->getPendingTask("invisibleevent");

				if (task != NULL) {
					if (!task->isScheduled()) {
						creature->playEffect("clienteffect/lair_med_damage_smoke.cef");
						task->schedule(1600);
						return SUCCESS;
					} else {
						player->sendSystemMessage("You can not go invisible at this time");
						return GENERALERROR;
					}
				}

				Reference<InvisibleEvent*> invisTask = new InvisibleEvent(player);

				creature->playEffect("clienteffect/lair_med_damage_smoke.cef");
				creature->addPendingTask("invisibleevent", invisTask, 1600);
			

		}
		Reference<PlayerObject*> ghost = player->getPlayerObject();

		if (ghost == NULL)
			return GENERALERROR;

		return SUCCESS;
	
	}
};

#endif //INVISIBLECOMMAND_H_
