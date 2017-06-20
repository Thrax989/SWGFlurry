/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef UNDERGROUNDEXPLOSION2COMMAND_H_
#define UNDERGROUNDEXPLOSION2COMMAND_H_

#include "CombatQueueCommand.h"

class UndergroundExplosion2Command : public CombatQueueCommand {
public:

	UndergroundExplosion2Command(const String& name, ZoneProcessServer* server)
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

		if (!creature->checkCooldownRecovery("explosion")) {
			StringIdChatParameter stringId;

			Time* cdTime = creature->getCooldownTime("explosion");

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
			creatureTarget->setSnaredState(16);
			//creatureTarget->playEffect("clienteffect/carbine_snare.cef", "");
			creatureTarget->sendSystemMessage("You have been snared");
			creature->addCooldown("explosion", 30 * 1000);

		}

		
		uint32 buffCRC = BuffCRC::FORCE_RANK_SUFFERING; //DURATION
		int duration = 16;
		int loopCount = ((duration/9)-1);
		ManagedReference<SingleUseBuff*> buff = new SingleUseBuff(creatureTarget, buffCRC, duration, BuffType::JEDI, getNameCRC());
		
		 if (!creature->hasBuff(buffCRC)) {
			Locker locker(buff);
			buff->setSpeedMultiplierMod(0.01f);
			creatureTarget->addBuff(buff);
			creatureTarget->playEffect("clienteffect/underground_explosion.cef", "");
			}

		return doCombatAction(creature, target);
	}
		
};

#endif //UNDERGROUNDEXPLOSION2COMMAND_H_
