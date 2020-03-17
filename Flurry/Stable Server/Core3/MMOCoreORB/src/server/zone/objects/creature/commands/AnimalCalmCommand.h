/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef ANIMALCALMCOMMAND_H_
#define ANIMALCALMCOMMAND_H_

#include "server/zone/objects/creature/commands/JediQueueCommand.h"
#include "ForcePowersQueueCommand.h"
#include "server/zone/objects/creature/ai/Creature.h"
#include "server/zone/managers/combat/CombatManager.h"
#include "server/zone/objects/tangible/threat/ThreatMap.h"

class AnimalCalmCommand : public ForcePowersQueueCommand {
public:

	AnimalCalmCommand(const String& name, ZoneProcessServer* server)
		: ForcePowersQueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		if (isWearingArmor(creature)) {
			return NOJEDIARMOR;
		}

		ManagedReference<SceneObject*> targetObject = server->getZoneServer()->getObject(target);

		Creature* targetCreature = cast<Creature*>(targetObject.get());

		if (targetCreature == nullptr || !targetCreature->isCreature()) {
			creature->sendSystemMessage("@error_message:target_not_creature");
			return GENERALERROR;
		}

		if (targetCreature->getMainDefender() != creature) {
			creature->sendSystemMessage("@jedi_spam:power_already_active");
			return GENERALERROR;
		}

		int res = doCombatAction(creature, target);

		if (res == SUCCESS) {

			ManagedReference<Creature*> creatureTarget = targetObject.castTo<Creature*>();

			Locker clocker(creatureTarget, creature);

			creatureTarget->removeDefender(creature);
			creatureTarget->notifyObservers(ObserverEventType::DEFENDERDROPPED);
			creatureTarget->getThreatMap()->clearAggro(creature);

			creature->doCombatAnimation(creatureTarget, STRING_HASHCODE("mind_trick_1"), 1, 0);
			creature->sendSystemMessage("@jedi_spam:calm_target");

			CombatManager::instance()->broadcastCombatSpam(creature, targetCreature, nullptr, 0, "cbt_spam", combatSpam + "_hit", 1);

			return SUCCESS;

		} else {
			creature->sendSystemMessage("@jedi_spam:fail_calm_target");
			CombatManager::instance()->broadcastCombatSpam(creature, targetCreature, nullptr, 0, "cbt_spam", combatSpam + "_miss", 1);
		}

		return res;
	}
};

#endif //ANIMALCALMCOMMAND_H_
