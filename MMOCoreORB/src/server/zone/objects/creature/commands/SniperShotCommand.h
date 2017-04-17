/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef SNIPERSHOTCOMMAND_H_
#define SNIPERSHOTCOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "CombatQueueCommand.h"

class SniperShotCommand : public CombatQueueCommand {
public:

	SniperShotCommand(const String& name, ZoneProcessServer* server)
		: CombatQueueCommand(name, server) {
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		ManagedReference<SceneObject*> targetObject = creature->getZoneServer()->getObject(target);

		CreatureObject* targetCreature = cast<CreatureObject*>(targetObject.get());

		if (targetCreature == NULL)
			return INVALIDTARGET;

		if (!targetCreature->isAttackableBy(creature))
			return INVALIDTARGET;

		CreatureObject* player = cast<CreatureObject*>(creature);

 		if (!player->checkCooldownRecovery("sniper_shot")){
 			Time* cdTime = player->getCooldownTime("sniper_shot");
 			int timeleft = floor((float)cdTime->miliDifference() /1000) * -1;
 
 			player->sendSystemMessage("sniper Shot is on Cooldown");
 			return GENERALERROR;
 		}

 		player->addCooldown("sniper_shot", 30 * 1000); // 30 second cooldown
		player->playEffect("clienteffect/lair_med_damage_smoke.cef");

		int res = doCombatAction(creature, target);

		CombatManager* combatManager = CombatManager::instance();

		if (res == SUCCESS) {
			Locker clocker(targetCreature, creature);

			targetCreature->playEffect("clienteffect/combat_special_attacker_aim.cef", "head");
                        targetCreature->setPosture(CreaturePosture::KNOCKEDDOWN);

			if (creature->isPlayerCreature())
				creature->sendSystemMessage("Attack has successfully landed");

		} else {

			if (creature->isPlayerCreature())
				creature->sendSystemMessage("Attack has failed to land");
		}

		return res;
	}

};

#endif //SNIPERSHOTCOMMAND_H_
