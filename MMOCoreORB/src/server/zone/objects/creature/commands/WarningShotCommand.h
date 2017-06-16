/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef WARNINGSHOTCOMMAND_H_
#define WARNINGSHOTCOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/managers/combat/CombatManager.h"
#include "templates/params/creature/CreatureAttribute.h"
#include "server/zone/objects/creature/BuffAttribute.h"
#include "server/zone/objects/creature/buffs/Buff.h"
#include "CombatQueueCommand.h"

class WarningShotCommand : public CombatQueueCommand {
public:

	WarningShotCommand(const String& name, ZoneProcessServer* server)
		: CombatQueueCommand(name, server) {
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {


		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		ManagedReference<WeaponObject*> weapon = creature->getWeapon();

		if (!weapon->isRangedWeapon()) {
			return INVALIDWEAPON;
		}

		ManagedReference<SceneObject*> targetObject = creature->getZoneServer()->getObject(target);

		CreatureObject* targetCreature = cast<CreatureObject*>(targetObject.get());

		if (targetCreature == NULL)
			return INVALIDTARGET;

		if (!targetCreature->isAttackableBy(creature))
			return INVALIDTARGET;

		CreatureObject* player = cast<CreatureObject*>(creature);

		if (!creature->checkCooldownRecovery("warning_shot")) {
   			StringIdChatParameter stringId;

   			Time* cdTime = creature->getCooldownTime("warning_shot");

   			int timeLeft = floor((float)cdTime->miliDifference() / 1000) *-1;

   			stringId.setStringId("@innate:equil_wait"); // You are still recovering from your last Command available in %DI seconds.
   			stringId.setDI(timeLeft);
   			creature->sendSystemMessage(stringId);
   			        return GENERALERROR;
   		       }

 		player->addCooldown("warning_shot", 10 * 1000); // 10 second cooldown
		player->playEffect("clienteffect/lair_med_damage_smoke.cef");

		const bool hasFr1 = targetCreature->hasBuff(BuffCRC::JEDI_FORCE_RUN_1);
		const bool hasFr2 = targetCreature->hasBuff(BuffCRC::JEDI_FORCE_RUN_2);
		const bool hasFr3 = targetCreature->hasBuff(BuffCRC::JEDI_FORCE_RUN_3);
		int res = doCombatAction(creature, target);
		int chance = 50;

		CombatManager* combatManager = CombatManager::instance();
		if (res == SUCCESS && System::random(100) > chance && (hasFr1 || hasFr2 || hasFr3)) {
			Locker clocker(targetCreature, creature);
			if (hasFr1) { targetCreature->removeBuff(BuffCRC::JEDI_FORCE_RUN_1); }
			if (hasFr2) { targetCreature->removeBuff(BuffCRC::JEDI_FORCE_RUN_2); }
			if (hasFr3) { targetCreature->removeBuff(BuffCRC::JEDI_FORCE_RUN_3); }

			targetCreature->playEffect("clienteffect/combat_special_attacker_aim.cef", "head");
    		  	targetCreature->setPosture(CreaturePosture::KNOCKEDDOWN);

			if (creature->isPlayerCreature())
				creature->sendSystemMessage("Knockdown Attempt  Has Successfully Landed");

		} else {

			if (creature->isPlayerCreature())
				creature->sendSystemMessage("Knockdwon Attempt Has Failed To Land");
		}

		return res;
	}

};

#endif //SNIPERSHOTCOMMAND_H_
