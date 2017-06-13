/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef EXTRACTIONCOMMAND_H_
#define EXTRACTIONCOMMAND_H_

#include "CombatQueueCommand.h"

class ExtractionCommand : public CombatQueueCommand {
public:

	ExtractionCommand(const String& name, ZoneProcessServer* server)
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
		targetCreature->playEffect("clienteffect/extraction_effect.cef", "");


		return doCombatAction(creature, target);
	}

};

#endif //EXTRACTIONCOMMAND_H_
