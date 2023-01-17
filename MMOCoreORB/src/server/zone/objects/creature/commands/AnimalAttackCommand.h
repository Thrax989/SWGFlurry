/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef ANIMALATTACKCOMMAND_H_
#define ANIMALATTACKCOMMAND_H_

#include "ForcePowersQueueCommand.h"
#include "server/zone/objects/creature/ai/Creature.h"
#include "server/zone/managers/combat/CombatManager.h"

class AnimalAttackCommand : public ForcePowersQueueCommand {
public:

	AnimalAttackCommand(const String& name, ZoneProcessServer* server)
		: ForcePowersQueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		ManagedReference<SceneObject*> targetObject = server->getZoneServer()->getObject(target);

		Creature* targetCreature = cast<Creature*>(targetObject.get());

		if (targetCreature == nullptr)
			return INVALIDTARGET;


	  if (targetCreature->getDistanceTo(creature) > 32.f) {
			 creature->sendSystemMessage("@error_message:target_out_of_range");
			 return true;
		}


				TangibleObject* defender = cast<TangibleObject*>(creature->getMainDefender());

			  if (defender == nullptr) {
				return INVALIDTARGET;
				}

				if (defender == targetCreature) {
					 creature->sendSystemMessage("@error_message:targetting_error"); //"You fail to enrage your target."
					 return true;
				}


		int res = doCombatAction(creature, target);

		if (res == SUCCESS) {

			Locker clocker(targetCreature, creature);

			// Commence controlling action...

			CombatManager::instance()->forcePeace(targetCreature);

	//		TangibleObject* defender = cast<TangibleObject*>(creature->getMainDefender());

	//		if (defender == nullptr || defender == targetCreature) {
	//			creature->sendSystemMessage("@jedi_spam:animal_attack_fail"); //"You fail to enrage your target."
	//			return true;
	//		}

			{
				Locker clocker (defender, creature);
				if (!defender->isAttackableBy(targetCreature)) {
					return INVALIDTARGET;
				}
			}

			targetCreature->setDefender(defender);

			creature->doCombatAnimation(targetCreature, STRING_HASHCODE("mind_trick_1"), 1, 0);
			creature->sendSystemMessage("@jedi_spam:animal_attack_success"); //"You successfully enrage your target."

		  CombatManager::instance()->broadcastCombatSpam(creature, targetCreature, nullptr, 0, "cbt_spam", combatSpam + "_hit", 1);

			return SUCCESS;

		} else {

			creature->sendSystemMessage("@jedi_spam:animal_attack_fail"); //"You fail to enrage your target."
	//		CombatManager::instance()->broadcastCombatSpam(creature, targetCreature, nullptr, 0, "cbt_spam", combatSpam + "_miss", 1);
		}

		return res;
	}
};

#endif //ANIMALATTACKCOMMAND_H_
