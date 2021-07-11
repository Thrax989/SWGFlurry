/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef OVERCHARGESHOT2COMMAND_H_
#define OVERCHARGESHOT2COMMAND_H_

#include "CombatQueueCommand.h"
#include "server/zone/objects/scene/SceneObject.h"

class OverChargeShot2Command : public CombatQueueCommand {
public:

	OverChargeShot2Command(const String& name, ZoneProcessServer* server)
		: CombatQueueCommand(name, server) {
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		Reference<SceneObject*> object = server->getZoneServer()->getObject(target);
		ManagedReference<CreatureObject*> creatureTarget = cast<CreatureObject*>( object.get());

		if (creatureTarget == nullptr)
			return GENERALERROR;

		if (creature->getDistanceTo(object) > 20.f){
			creature->sendSystemMessage("You are out of range.");
			return GENERALERROR;
		}		

			PlayerManager* playerManager = server->getPlayerManager();

		if (creature != creatureTarget && !CollisionManager::checkLineOfSight(creature, creatureTarget)) {
			return GENERALERROR;
		}

		if (creature->isAttackableBy(creatureTarget) && creature->isInRange(creatureTarget, 20)) {

		}else{
				return INVALIDTARGET;
		}

		const bool hasFr1 = creatureTarget->hasBuff(BuffCRC::JEDI_FORCE_RUN_1);
		const bool hasFr2 = creatureTarget->hasBuff(BuffCRC::JEDI_FORCE_RUN_2);
		const bool hasFr3 = creatureTarget->hasBuff(BuffCRC::JEDI_FORCE_RUN_3);

		if(hasFr1 || hasFr2 || hasFr3) {
			creature->sendSystemMessage(creatureTarget->getFirstName() + "'s Force Run has been disrupted by your attack!");
			creatureTarget->sendSystemMessage("Your Force Run has been disrupted by" + creature->getFirstName() + ".");

			Locker lock(creatureTarget);
			if (hasFr1) { creatureTarget->removeBuff(BuffCRC::JEDI_FORCE_RUN_1); }
			if (hasFr2) { creatureTarget->removeBuff(BuffCRC::JEDI_FORCE_RUN_2); }
			if (hasFr3) { creatureTarget->removeBuff(BuffCRC::JEDI_FORCE_RUN_3); }

		}
		return doCombatAction(creature, target);
	}

};

#endif //OVERCHARGESHOT2COMMAND_H_
