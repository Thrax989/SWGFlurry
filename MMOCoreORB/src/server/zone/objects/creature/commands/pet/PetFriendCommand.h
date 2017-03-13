
#ifndef PETFRIENDCOMMAND_H_
#define PETFRIENDCOMMAND_H_

#include "server/zone/objects/creature/commands/QueueCommand.h"
#include "server/zone/objects/creature/ai/AiAgent.h"
#include "server/zone/objects/creature/ai/DroidObject.h"
#include "server/zone/managers/creature/PetManager.h"

class PetFriendCommand : public QueueCommand {
public:
	PetFriendCommand(const String& name, ZoneProcessServer* server)
		: QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		return SUCCESS;
	}

};


#endif /* PETFRIENDCOMMAND_H_ */
