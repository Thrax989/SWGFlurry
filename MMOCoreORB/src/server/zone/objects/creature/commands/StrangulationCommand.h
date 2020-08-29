/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef STRANGULATIONCOMMAND_H_
#define STRANGULATIONCOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/creature/commands/CombatQueueCommand.h"

class StrangulationCommand : public CombatQueueCommand {
public:

	StrangulationCommand(const String& name, ZoneProcessServer* server)
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


		CreatureObject* player = cast<CreatureObject*>(creature);

		ZoneServer* zserv = creature->getZoneServer();
		PlayerObject* jedi = creature->getPlayerObject();

		// Fail if target is not a player...
		ManagedReference<SceneObject*> object = server->getZoneServer()->getObject(target);

		if (object == NULL || !object->isCreatureObject())
			return INVALIDTARGET;

		CreatureObject* creatureTarget = cast<CreatureObject*>( object.get());
		PlayerManager* playerManager = server->getPlayerManager();

		if (creature != creatureTarget && !CollisionManager::checkLineOfSight(creature, creatureTarget)) {
			creature->sendSystemMessage("You do not have a clear line of sight to the target.");
			return INVALIDTARGET;
		}

		if (!creature->checkCooldownRecovery("strangulation")) {
			StringIdChatParameter stringId;

			Time* cdTime = creature->getCooldownTime("strangulation");

			// Returns -time. Multiple by -1 to return positive.
			int timeLeft = floor((float)cdTime->miliDifference() / 1000) *-1;

			stringId.setStringId("@innate:equil_wait"); // You are still recovering from your last equilization. Command available in %DI seconds.
			stringId.setDI(timeLeft);
			creature->sendSystemMessage(stringId);
			return GENERALERROR;
		}

		if (creatureTarget == NULL)
			return INVALIDTARGET;

		Locker clocker(creatureTarget, creature);

		ManagedReference<PlayerObject*> targetGhost = creatureTarget->getPlayerObject();
		ManagedReference<PlayerObject*> playerObject = creature->getPlayerObject();

		if (targetGhost == NULL || playerObject == NULL)
			return GENERALERROR;

		if (creature->getDistanceTo(creatureTarget) > 10.f){
			creature->sendSystemMessage("You are out of range.");
			return GENERALERROR;}

		if (creatureTarget->isRidingMount()) {
			creature->sendSystemMessage("you cannot knockdown a player while they are mounted");
			return GENERALERROR;
		}

		if (object->isCreatureObject() && creatureTarget->isAttackableBy(creature)) {
			creatureTarget->setState(CreatureState::PEACE);
			creatureTarget->playEffect("clienteffect/npe_smoke_bomb.cef", "");
			creatureTarget->sendSystemMessage("You have been choked into submission.");
			creature->setState(CreatureState::PEACE);
		creature->addCooldown("strangulation", 300 * 1000);

		}

		creature->clearQueueActions();

		CombatManager::instance()->attemptPeace(creature);

		return SUCCESS;
	}

};

#endif //STRANGULATIONCOMMAND_H_
