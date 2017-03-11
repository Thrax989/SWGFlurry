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

		CreatureObject* player = cast<CreatureObject*>(creature);
 		if (!player->checkCooldownRecovery("roll_shot")){
 			Time* cdTime = player->getCooldownTime("roll_shot");
 			int timeleft = floor((float)cdTime->miliDifference() /1000) * -1;
 
 			player->sendSystemMessage("Roll shot to is on Cooldown");
 			return GENERALERROR;
 		}
 		player->addCooldown("roll_shot", 5 * 1000); //5 second cooldown
		player->playEffect("clienteffect/lair_med_damage_smoke.cef");

		int ret = doCombatAction(creature, target);

		if (ret != SUCCESS)
			return ret;

		if (creature->isDizzied() && System::random(100) < 50) {
			creature->queueDizzyFallEvent();
			creature->playEffect("clienteffect/ui_missile_aquiring.cef", "");
		}

		return SUCCESS;
	}

};

#endif //ROLLSHOTCOMMAND_H_
