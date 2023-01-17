#ifndef JEDIMINDTRICKCOMMAND_H_
#define JEDIMINDTRICKCOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "ForcePowersQueueCommand.h"

class JediMindTrickCommand : public ForcePowersQueueCommand {
public:

JediMindTrickCommand(const String& name, ZoneProcessServer* server)
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


	if (targetObject == nullptr || !targetObject->isCreatureObject()) {
		return INVALIDTARGET;
	}

	if (targetObject->isCreature()) { //// Will not continue if a creature
		creature->sendSystemMessage("@error_message:target_not_npc"); // Your Mind Trick cannot be performed because your target is not a player or a NPC.
		return true;
	}

	if (targetObject->getDistanceTo(creature) > 32.f) {
	 creature->sendSystemMessage("@error_message:target_out_of_range");
	 return true;
	}

	if (!creature->checkCooldownRecovery("mindtrick")) {
		StringIdChatParameter stringId;

		Time* cdTime = creature->getCooldownTime("mindtrick");

		// Returns -time. Multiple by -1 to return positive.
		int timeLeft = floor((float)cdTime->miliDifference() / 1000) *-1;

		stringId.setStringId("@innate:equil_wait"); // You are still recovering from your last equilization. Command available in %DI seconds.
		stringId.setDI(timeLeft);
		creature->sendSystemMessage(stringId);
		return GENERALERROR;
	}

	int res = doCombatAction(creature, target);

	if (res == SUCCESS) {

		ManagedReference<CreatureObject*> creatureTarget = targetObject.castTo<CreatureObject*>();

////
if (creatureTarget != nullptr) {

    Locker clocker(creatureTarget, creature);

    creatureTarget->removeDefender(creature);
    creatureTarget->notifyObservers(ObserverEventType::DEFENDERDROPPED);
    creatureTarget->getThreatMap()->clearAggro(creature);

    creature->doCombatAnimation(creatureTarget, STRING_HASHCODE("mind_trick_1"), 1, 0);
    creature->sendSystemMessage("@jedi_spam:mind_trick_success"); //"You successfully use your Force Power to trick your target

		if (creatureTarget != nullptr && creatureTarget->isPlayerCreature()) {
			creatureTarget->clearQueueActions();
			CombatManager::instance()->attemptPeace(creatureTarget);
			creature->addCooldown("mindtrick", 120 * 1000);
		}
		creature->clearQueueActions();
		CombatManager::instance()->attemptPeace(creature);
		creature->addCooldown("mindtrick", 120 * 1000);
 return SUCCESS;

    } else {
    	creature->sendSystemMessage("@error_message:targetting_error"); //Target Error
    }

  } else {
    creature->sendSystemMessage("@jedi_spam:mind_trick_fail"); //"You fail to trick your target
  }

  return res;
 }
};

#endif //JEDIMINDTRICKCOMMAND_H_
