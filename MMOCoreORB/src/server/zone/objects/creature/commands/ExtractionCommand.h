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

		return doCombatAction(creature, target);
	}

};

#endif //EXTRACTIONCOMMAND_H_
