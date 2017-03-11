/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef ROLLSHOTCOMMAND_H_
#define ROLLSHOTCOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "CombatQueueCommand.h"

class RollShotCommand : public CombatQueueCommand {
public:

	RollShotCommand(const String& name, ZoneProcessServer* server)
		: CombatQueueCommand(name, server) {
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		ManagedReference<SceneObject*> targetObject = creature->getZoneServer()->getObject(target);

		if (targetObject == NULL || !targetObject->isCreatureObject() || targetObject->isPlayerCreature())
			return INVALIDTARGET;

		CreatureObject* targetCreature = cast<CreatureObject*>(targetObject.get());

		if (targetCreature == NULL)
			return INVALIDTARGET;

		if (!targetCreature->isAttackableBy(creature))
			return INVALIDTARGET;

		CreatureObject* player = cast<CreatureObject*>(creature);

 		if (!player->checkCooldownRecovery("roll_shot")){
 			Time* cdTime = player->getCooldownTime("roll_shot");
 			int timeleft = floor((float)cdTime->miliDifference() /1000) * -1;
 
 			player->sendSystemMessage("Roll shot to is on Cooldown");
 			return GENERALERROR;
 		}

 		player->addCooldown("roll_shot", 10 1000); // 10 second cooldown
		player->playEffect("clienteffect/lair_med_damage_smoke.cef");

		int res = doCombatAction(creature, target);

		CombatManager* combatManager = CombatManager::instance();

		if (res == SUCCESS) {
			Locker clocker(targetCreature, creature);

			targetCreature->playEffect("clienteffect/ui_missile_aquiring.cef", "");

			if (creature->isPlayerCreature())
				creature->sendSystemMessage("Attack has successfully landed");

		} else {

			if (creature->isPlayerCreature())
				creature->sendSystemMessage("Attack has failed to land");
		}

		return res;
	}

};

#endif //ROLLSHOTCOMMAND_H_
