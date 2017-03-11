/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef ROLLSHOTCOMMAND_H_
#define ROLLSHOTCOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/player/sui/callbacks/BountyHuntSuiCallback.h"
#include "server/zone/objects/player/sui/inputbox/SuiInputBox.h"
#include "server/zone/packets/player/PlayMusicMessage.h"
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
 		player->addCooldown("roll_shot", 3 * 1000); //3 second cooldown
		player->playEffect("clienteffect/lair_med_damage_smoke.cef");
		PlayMusicMessage* pmm = new PlayMusicMessage("sound/music_combat_bfield_lp.snd");
  		player->sendMessage(pmm);

		int ret = doCombatAction(creature, target);

		if (ret != SUCCESS)
			return ret;

		if (creature->isDizzied() && System::random(100) < 85) {
			creature->queueDizzyFallEvent();
		}

		return SUCCESS;
	}

};

#endif //ROLLSHOTCOMMAND_H_
