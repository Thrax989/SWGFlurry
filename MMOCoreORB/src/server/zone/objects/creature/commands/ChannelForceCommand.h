/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef CHANNELFORCECOMMAND_H_
#define CHANNELFORCECOMMAND_H_

#include "server/zone/objects/creature/buffs/ChannelForceBuff.h"
#include "templates/params/creature/CreatureAttribute.h"

class ChannelForceCommand : public QueueCommand {
public:

	ChannelForceCommand(const String& name, ZoneProcessServer* server)
: QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		if (creature->hasAttackDelay())
			return GENERALERROR;

		if (isWearingArmor(creature)) {
			return NOJEDIARMOR;
		}
		
		if (!creature->checkCooldownRecovery("channel")) {
  			StringIdChatParameter stringId;
  
  			Time* cdTime = creature->getCooldownTime("channel");
  
  			int timeLeft = floor((float)cdTime->miliDifference() / 1000) *-1;
  
  			stringId.setStringId("@innate:equil_wait"); // You are still recovering from your last Command available in %DI seconds.
  			stringId.setDI(timeLeft);
  			creature->sendSystemMessage(stringId);
  			        return GENERALERROR;
  		       }

		// Bonus is in between 200-300.
		int rand = System::random(10);
		int forceBonus = 200 + (rand * 10); // Needs to be divisible by amount of ticks.

		ManagedReference<PlayerObject*> playerObject = creature->getPlayerObject();

		if (playerObject == NULL)
			return GENERALERROR;

		// Do not execute if the player's force bar is full.
		if (playerObject->getForcePower() >= playerObject->getForcePowerMax())
			return GENERALERROR;
		int enhSkills = playerObject->numSpecificSkills(creature, "force_discipline_enhancements_");
                float enhMod = enhSkills * .056;
                int modforceBonus = forceBonus * (1 + enhMod);

		// To keep it from going over max...
		if ((playerObject->getForcePowerMax() - playerObject->getForcePower()) < modforceBonus)
			modforceBonus = ((playerObject->getForcePowerMax() - playerObject->getForcePower()) / 10) * 10;

		int health = creature->getHAM(CreatureAttribute::HEALTH);
		int action = creature->getHAM(CreatureAttribute::ACTION);
		int mind = creature->getHAM(CreatureAttribute::MIND);

		if ((health <= forceBonus) || (action <= forceBonus) || (mind <= forceBonus)) {
			creature->sendSystemMessage("@jedi_spam:channel_ham_too_low"); // Your body is too weakened to perform that action.
			return GENERALERROR;
		}

		int maxHealth = creature->getMaxHAM(CreatureAttribute::HEALTH);
		int maxAction = creature->getMaxHAM(CreatureAttribute::ACTION);
		int maxMind = creature->getMaxHAM(CreatureAttribute::MIND);

		if ((maxHealth - creature->getWounds(CreatureAttribute::HEALTH) <= forceBonus) || (maxAction - creature->getWounds(CreatureAttribute::ACTION) <= forceBonus) || (maxMind - creature->getWounds(CreatureAttribute::MIND) <= forceBonus)) {
			creature->sendSystemMessage("@jedi_spam:channel_ham_too_low"); // Your body is too weakened to perform that action.
			return GENERALERROR;
		}

		// Give Force, and subtract HAM.
		playerObject->setForcePower(playerObject->getForcePower() + modforceBonus);

		// Setup buffs.
		uint32 buffCRC = STRING_HASHCODE("channelforcebuff");
		Reference<Buff*> buff = creature->getBuff(buffCRC);
		int duration = ChannelForceBuff::FORCE_CHANNEL_TICK_SECONDS * 20;
		if (playerObject->hasPvpTef()) {
			duration = duration * 3;
			forceBonus = forceBonus * 2;
		}
		if (buff == NULL) {
			buff = new ChannelForceBuff(creature, buffCRC, duration);
			
			Locker locker(buff);
			
			buff->setAttributeModifier(CreatureAttribute::HEALTH, -forceBonus);
			buff->setAttributeModifier(CreatureAttribute::ACTION, -forceBonus);
			buff->setAttributeModifier(CreatureAttribute::MIND, -forceBonus);

			creature->addBuff(buff);
		} else {
			Locker locker(buff, creature);

			buff->setAttributeModifier(CreatureAttribute::HEALTH,
									   buff->getAttributeModifierValue(CreatureAttribute::HEALTH)-forceBonus);
			buff->setAttributeModifier(CreatureAttribute::ACTION,
									   buff->getAttributeModifierValue(CreatureAttribute::ACTION)-forceBonus);
			buff->setAttributeModifier(CreatureAttribute::MIND,
									   buff->getAttributeModifierValue(CreatureAttribute::MIND)-forceBonus);
			
			creature->addMaxHAM(CreatureAttribute::HEALTH, -forceBonus);
			creature->addMaxHAM(CreatureAttribute::ACTION, -forceBonus);
			creature->addMaxHAM(CreatureAttribute::MIND, -forceBonus);
			
			creature->renewBuff(buffCRC, duration + buff->getTimeLeft());
			creature->addCooldown("channel", 20 * 1000);
			Reference<ChannelForceBuff*> channelBuff = buff.castTo<ChannelForceBuff*>();
			if (channelBuff != NULL)
				channelBuff->activateRegenTick();
		}

		return SUCCESS;
	}

};

#endif //CHANNELFORCECOMMAND_H_
