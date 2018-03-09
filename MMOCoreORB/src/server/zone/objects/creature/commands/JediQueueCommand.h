/*
 * JediQueueCommand.h
 *
 *  Created on: Apr 9, 2015
 *      Author: valkyra
 */

#ifndef JEDIQUEUECOMMAND_H_
#define JEDIQUEUECOMMAND_H_


#include "server/zone/objects/creature/buffs/Buff.h"
#include "QueueCommand.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/managers/visibility/VisibilityManager.h"
#include "server/zone/objects/creature/buffs/SingleUseBuff.h"
#include "server/zone/objects/player/PlayerObject.h"

class JediQueueCommand : public QueueCommand {

protected:
	int forceCost;
	int duration;
	uint32 animationCRC;
	String clientEffect;
	float speedMod;
	int visMod;
	int buffClass;

	uint32 buffCRC;
	Vector<uint32> overrideableCRCs;
	Vector<uint32> blockingCRCs;
	Vector<unsigned int> singleUseEventTypes;

	float frsLightCostMultiplier;
	float frsDarkCostMultiplier;
	float frsLightAdditionalCostMultiplier;
	float frsDarkAdditionalCostMultiplier;
	float frsLightEffectMultiplier;
	float frsDarkEffectMultiplier;

public:
	enum { BASE_BUFF, SINGLE_USE_BUFF };
    
	JediQueueCommand(const String& name, ZoneProcessServer* server) : QueueCommand(name, server) {
		forceCost = 0;
		duration = 0;
		animationCRC = 0;
		clientEffect = "";
		buffClass = BASE_BUFF;
		speedMod = 0;
		visMod = 10;
		buffCRC = 0;

		frsLightCostMultiplier = 0;
		frsDarkCostMultiplier = 0;
		frsLightAdditionalCostMultiplier = 0;
		frsDarkAdditionalCostMultiplier = 0;
		frsLightEffectMultiplier = 0;
		frsDarkEffectMultiplier = 0;
	}



	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {
		return SUCCESS;
	}

	bool isJediQueueCommand() {
		return true;
	}

    
	int doJediSelfBuffCommand(CreatureObject* creature) const {
		// first and foremost, we need to toggle this buff off if we already have it
		if (creature->hasBuff(buffCRC)) {
			creature->removeBuff(buffCRC);
			return SUCCESS;
		}

		// Do checks first.
		int res = doCommonJediSelfChecks(creature);

		if (res != SUCCESS)
			return res;

        return doBuff(creature);

	}
    
	int doBuff(CreatureObject* creature) const {
		ManagedReference<Buff*> buff = createJediSelfBuff(creature);
        
		// Return if buff is NOT valid.
		if (buff == NULL)
			return GENERALERROR;

		int frsLightManipulationMod = creature->getSkillMod("force_manipulation_light");
		int frsDarkManipulationMod = creature->getSkillMod("force_manipulation_dark");
		int ForceCost = forceCost;

		//FRS Modifier -- Force Cost
		if (frsLightManipulationMod > 0) {
			if (frsLightCostMultiplier != 0)
				ForceCost += (int)((frsLightManipulationMod * frsLightCostMultiplier) + 0.5);
		} else if (frsDarkManipulationMod > 0) {
			if (frsDarkCostMultiplier != 0)
				ForceCost += (int)((frsDarkManipulationMod * frsDarkCostMultiplier) + 0.5);
		}

		//Check for Force Cost.
		ManagedReference<PlayerObject*> ghost = creature->getPlayerObject();

		if (ghost != NULL && ghost->getForcePower() < ForceCost) {
			creature->sendSystemMessage("@jedi_spam:no_force_power"); //"You do not have enough Force Power to perform that action.
			return GENERALERROR;
		}

		Locker locker(buff);
        
		// Add buff.
		creature->addBuff(buff);

		// Force Cost.
		if (ghost != NULL)
			ghost->setForcePower(ghost->getForcePower() - ForceCost);

		// Increase Visibility for Force Buff.
		VisibilityManager::instance()->increaseVisibility(creature, visMod);

		// Client Effect.
		if (!clientEffect.isEmpty()) {
			creature->playEffect(clientEffect, "");
		}

		// Return.
		return SUCCESS;
	}

	int doCommonJediSelfChecks(CreatureObject* creature) const {
		int res = doCommonMedicalCommandChecks(creature);

		if (res != SUCCESS)
			return res;

		if (isWearingArmor(creature))
			return NOJEDIARMOR;

		for (int i=0; i < blockingCRCs.size(); ++i) {
			if (creature->hasBuff(blockingCRCs.get(i))) {
				return NOSTACKJEDIBUFF;
			}
		}
		return SUCCESS;
	}

	ManagedReference<Buff*> createJediSelfBuff(CreatureObject* creature) const {

		for (int i=0; i < overrideableCRCs.size(); ++i) {
			int buff = overrideableCRCs.get(i);
			if (creature->hasBuff(buff)) {
				creature->removeBuff(buff);
			}
		}

		// Create buff object.
		ManagedReference<Buff*> buff = NULL;
        
		if(buffClass == BASE_BUFF || singleUseEventTypes.size() == 0) {
			buff = new Buff(creature, buffCRC, duration, BuffType::JEDI);
		} else if(buffClass == SINGLE_USE_BUFF) {;

			SingleUseBuff* suBuff = new SingleUseBuff(creature, buffCRC, duration, BuffType::JEDI, getNameCRC());

			buff = suBuff;

			// Otherwise the compiler complains we're modifying member variables in a "const" function
			Vector<uint32> singleUseTypesCopy = singleUseEventTypes;

			Locker blocker(suBuff);
			suBuff->init(&singleUseTypesCopy);

		} else {
			error("Unknown buff type");
			return NULL;
		}

		Locker locker(buff);

		if (speedMod > 0) {
			buff->setSpeedMultiplierMod(speedMod);
			buff->setAccelerationMultiplierMod(speedMod);
		}

		StringIdChatParameter start("jedi_spam", "apply_" + name);
		StringIdChatParameter end("jedi_spam", "remove_" + name);

		buff->setStartMessage(start);
		buff->setEndMessage(end);

		int mod = 0;

		int frsLightControlMod = creature->getSkillMod("force_control_light");
		int frsDarkControlMod = creature->getSkillMod("force_control_dark");

		if (frsLightControlMod > 0) {
			if (frsLightEffectMultiplier != 0)
				mod += (int)((frsLightControlMod * frsLightEffectMultiplier) + 0.5);
		} else if (frsDarkControlMod > 0) {
			if (frsDarkEffectMultiplier != 0)
				mod += (int)((frsDarkControlMod * frsDarkEffectMultiplier) + 0.5);
		}

		for (int i=0; i < skillMods.size(); ++i) {
			buff->setSkillModifier(skillMods.elementAt(i).getKey(), skillMods.elementAt(i).getValue() + mod);
		}

		return buff;
	}

	void setForceCost(int fc) {
		forceCost = fc;
	}

	void setDuration(int dur) {
		duration = dur;
	}

	void setAnimationCRC(uint32 crc) {
		animationCRC = crc;
	}

	void setClientEffect(String ce) {
		clientEffect = ce;
	}

	void setSpeedMod(float sm) {
		speedMod = sm;
	}
    
	void setBuffClass(int bt) {
		buffClass = bt;
	}

	void setVisMod(int vm) {
		visMod = vm;
	}

	int getVisMod() const {
		return visMod;
	}

	void setFrsLightCostMultiplier(float multiplier) {
		frsLightCostMultiplier = multiplier;
	}
	void setFrsDarkCostMultiplier(float multiplier) {
		frsDarkCostMultiplier = multiplier;
	}
	void setFrsLightAdditionalCostMultiplier(float multiplier) {
		frsLightAdditionalCostMultiplier = multiplier;
	}
	void setFrsDarkAdditionalCostMultiplier(float multiplier) {
		frsDarkAdditionalCostMultiplier = multiplier;
	}
	void setFrsLightEffectMultiplier(float multiplier) {
		frsLightEffectMultiplier = multiplier;
	}
	void setFrsDarkEffectMultiplier(float multiplier) {
		frsDarkEffectMultiplier = multiplier;
	}
};


#endif /* SRC_SERVER_ZONE_OBJECTS_CREATURE_COMMANDS_JEDIQUEUECOMMAND_H_ */
