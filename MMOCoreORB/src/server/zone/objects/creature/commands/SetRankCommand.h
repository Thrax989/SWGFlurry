/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef SETRANKCOMMAND_H_
#define SETRANKCOMMAND_H_

class SetRankCommand : public QueueCommand {
public:

	SetRankCommand(const String& name, ZoneProcessServer* server)
		: QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		if( !creature->isPlayerCreature() )
			return GENERALERROR;

		StringTokenizer args(arguments.toString());

		ManagedReference<PlayerObject*> ghost = creature->getPlayerObject();

		if (ghost == NULL || !ghost->isPrivileged()) {
			creature->sendSystemMessage("@error_message:insufficient_permissions"); //You do not have sufficient permissions to perform the requested action.
			return INSUFFICIENTPERMISSION;
		}

		if( !args.hasMoreTokens() ){
			creature->sendSystemMessage("format is /SetRankCommand clienteffect/int_camshake_light.cef");
			return INVALIDPARAMETERS;
		}
		//Translate String
		String clienteffect;
		args.getStringToken(clienteffect);

		//Search for CreatureObject
		ManagedReference<SceneObject*> targetObject = server->getZoneServer()->getObject(creature->getTargetID());
		ManagedReference<CreatureObject*> targetCreature = NULL;
		if (targetObject != NULL && targetObject->isCreature()) {
			targetCreature = cast<CreatureObject*>( targetObject.get());
			targetCreature->playEffect(clienteffect, "head");
		} else {
			creature->playEffect(clienteffect, "head");
		}
		return SUCCESS;
	}
};

#endif //SETRANKCOMMAND_H_
