/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef POISONGASCLOUD2COMMAND_H_
#define POISONGASCLOUD2COMMAND_H_

#include "CombatQueueCommand.h"

class PoisonGasCloud2Command : public CombatQueueCommand {
public:

	PoisonGasCloud2Command(const String& name, ZoneProcessServer* server)
		: CombatQueueCommand(name, server) {
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		if (!creature->isInCombat())
			return false;

		ManagedReference<SceneObject*> targetObject = creature->getZoneServer()->getObject(target);

		CreatureObject* targetCreature = cast<CreatureObject*>(targetObject.get());

		if (targetCreature == NULL)
			return INVALIDTARGET;

		if (!targetCreature->isAttackableBy(creature))
			return INVALIDTARGET;

		CreatureObject* player = cast<CreatureObject*>(creature);
		Locker clocker(targetCreature, creature);

		targetCreature->playEffect("clienteffect/poisoncloud_effect.cef", "");

		return doCombatAction(creature, target);
	}

};

#endif //POISONGASCLOUD2COMMAND_H_
