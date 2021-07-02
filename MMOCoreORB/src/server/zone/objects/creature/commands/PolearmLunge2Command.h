/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef POLEARMLUNGE2COMMAND_H_
#define POLEARMLUNGE2COMMAND_H_

#include "CombatQueueCommand.h"

class PolearmLunge2Command : public CombatQueueCommand {
public:

	PolearmLunge2Command(const String& name, ZoneProcessServer* server)
		: CombatQueueCommand(name, server) {
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature)) {
			return INVALIDSTATE;
		}

		if (!checkInvalidLocomotions(creature)) {
			return INVALIDLOCOMOTION;
		}
		
		// -------------------------------------------------------------------------------------
		// Beginning of Stripping ForceRun from a target
		Reference<SceneObject*> object = server->getZoneServer()->getObject(target);
		ManagedReference<CreatureObject*> creatureTarget = cast<CreatureObject*>( object.get());

		if (creatureTarget == nullptr)
			return GENERALERROR;

		// Within 20 meters of target
		if (creature->getDistanceTo(object) > 20.f){
			creature->sendSystemMessage("You are out of range.");
			return GENERALERROR;
		}

		PlayerManager* playerManager = server->getPlayerManager();

		if (creature != creatureTarget && !CollisionManager::checkLineOfSight(creature, creatureTarget)) {
			return GENERALERROR;
		}

		// Make sure they can't spam!
		// Also skip FR stripping if the target has Master Enhancer
		if (creature->isAttackableBy(creatureTarget) && creatureTarget->checkCooldownRecovery("fr_strip_resistant")) {

			// Do not strip FR if they're not within 64meters, but still do the attack.
			// Technically this should never happen as the attack itself is set to 64m, but this is just so FR strip cannot be used outside of 64m.
			// We also want to check to see if they even have novice enhancer to even check if they could have FR on them!
			if (!creature->isInRange(creatureTarget, 20) || !creatureTarget->hasSkill("force_discipline_enhancements_novice")) {
				return doCombatAction(creature, target);
			}

			// Add Strip code here
			// Don't strip Fr1
			// const bool hasFr1 = creatureTarget->hasBuff(BuffCRC::JEDI_FORCE_RUN_1);
			const bool hasFr2 = creatureTarget->hasBuff(BuffCRC::JEDI_FORCE_RUN_2);
			const bool hasFr3 = creatureTarget->hasBuff(BuffCRC::JEDI_FORCE_RUN_3);

			if (hasFr2 || hasFr3) {
				int stripDrain = 200;
				// Let people know what's going on
				creature->sendSystemMessage(creatureTarget->getFirstName() + "'s Force Run has been disrupted by your attack!");
				creatureTarget->sendSystemMessage("Your Force Run has been disrupted by" + creature->getFirstName() + ".");

				Locker lock(creatureTarget);

				// if (hasFr1) { creatureTarget->removeBuff(BuffCRC::JEDI_FORCE_RUN_1); }
				if (hasFr2) { 
					creatureTarget->removeBuff(BuffCRC::JEDI_FORCE_RUN_2); 
					// creatureTarget->sendSystemMessage("Immunity Set for Strip!");
					creatureTarget->addCooldown("fr_strip_resistant", 15 * 1000); // 15 second cooldown
				}
				else if (hasFr3) { 
					creatureTarget->removeBuff(BuffCRC::JEDI_FORCE_RUN_3); 
					// creatureTarget->sendSystemMessage("Immunity Set for Strip!");
					creatureTarget->addCooldown("fr_strip_resistant", 15 * 1000); // 15 second cooldown
				}

				// Eat another 200 force if you strip FR from them unless they're M.Enhancer
				if(!creatureTarget->hasSkill("force_discipline_enhancements_master")) {
					ManagedReference<PlayerObject*> ghost = creatureTarget->getPlayerObject();
					// creatureTarget->force	
					if (ghost->getForcePower() >= 200) {
						ghost->setForcePower(ghost->getForcePower() - stripDrain);
					} else {
						ghost->setForcePower(0); // They have 200 or less Force left
					}
				}
			}
		}
		// End of Stripping ForceRun from a target
		// -------------------------------------------------------------------------------------

		return doCombatAction(creature, target);
	}

};

#endif //POLEARMLUNGE2COMMAND_H_
