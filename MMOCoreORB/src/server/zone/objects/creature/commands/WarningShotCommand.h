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

		if (creature->isInvisible()) {
			return GENERALERROR;
		}

		ManagedReference<WeaponObject*> weapon = creature->getWeapon();

		if (!weapon->isRangedWeapon()) {
			return INVALIDWEAPON;
		}

		Reference<SceneObject*> object = server->getZoneServer()->getObject(target);
		ManagedReference<CreatureObject*> creatureTarget = cast<CreatureObject*>( object.get());

		if (creatureTarget == NULL)
			return GENERALERROR;


		if (creature->getDistanceTo(object) > 64.f){
			creature->sendSystemMessage("You are out of range.");
			return GENERALERROR;
		}

		PlayerManager* playerManager = server->getPlayerManager();

		if (creature != creatureTarget && !CollisionManager::checkLineOfSight(creature, creatureTarget)) {
			return GENERALERROR;
		}

		if (!creature->checkCooldownRecovery("used_warning")) {
					StringIdChatParameter stringId;

					Time* cdTime = creature->getCooldownTime("used_warning");


					int timeLeft = floor((float)cdTime->miliDifference() / 1000) *-1;

					stringId.setStringId("You must waiting....");
					stringId.setDI(timeLeft);
					creature->sendSystemMessage(stringId);
					return 0;
		}
		
		if (creature->isAttackableBy(creatureTarget) && creature->isInRange(creatureTarget, 62)) {

			creature->addCooldown("used_warning", 5);
		}else{
				return INVALIDTARGET;
		}
		
		int res = doCombatAction(creature, target);
		int chance = 50;
		
		const bool hasFr1 = creatureTarget->hasBuff(BuffCRC::JEDI_FORCE_RUN_1);
		const bool hasFr2 = creatureTarget->hasBuff(BuffCRC::JEDI_FORCE_RUN_2);
		const bool hasFr3 = creatureTarget->hasBuff(BuffCRC::JEDI_FORCE_RUN_3);

		CombatManager* combatManager = CombatManager::instance();
		if (res == SUCCESS || System::random(100) > chance || hasFr1 || hasFr2 || hasFr3) {
			Locker lock(creatureTarget);
			if (hasFr1) { creatureTarget->removeBuff(BuffCRC::JEDI_FORCE_RUN_1); }
			if (hasFr2) { creatureTarget->removeBuff(BuffCRC::JEDI_FORCE_RUN_2); }
			if (hasFr3) { creatureTarget->removeBuff(BuffCRC::JEDI_FORCE_RUN_3); }
			
			if (creature->isPlayerCreature())
				creature->sendSystemMessage("Warning Shot Has Successfully Landed");
				creature->addWounds(CreatureAttribute::QUICKNESS, 200, true);
		} else {

			if (creature->isPlayerCreature())
				creature->sendSystemMessage("Warning Shot Attempt Has Failed To Land");
				creatureTarget->sendSystemMessage("Your Force Run has been disrupted by" + creature->getFirstName() + ".");
		}



		return doCombatAction(creature, target);
	}

};

#endif //WARNINGSHOTCOMMAND_H_
