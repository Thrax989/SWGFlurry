/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions. */

#ifndef AVOIDINCAPACITATIONCOMMAND_H_
#define AVOIDINCAPACITATIONCOMMAND_H_

#include "JediQueueCommand.h"

class AvoidIncapacitationCommand : public JediQueueCommand {
public:

	AvoidIncapacitationCommand(const String& name, ZoneProcessServer* server)
: JediQueueCommand(name, server) {
		 buffCRC = BuffCRC::JEDI_AVOID_INCAPACITATION;
		 skillMods.put("avoid_incapacitation", 1);
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {
		// SPECIAL - For Avoid Incapacitation, which is a special case buff, if it's determined that it should only be stacked up to 6 times for a new buff object, then it'll needs a new crc from the other 5 in string-files.
		// PLUS: There is no concrete evidence for what's stated in 'SPECIAL' sentence above, beyond the existence of 6 CRCs themselves.

		if (creature->hasBuff(BuffCRC::JEDI_AVOID_INCAPACITATION)) {
			
		if (!creature->checkCooldownRecovery("avoid")) {
 			StringIdChatParameter stringId;
 
 			Time* cdTime = creature->getCooldownTime("avoid");
 
 			int timeLeft = floor((float)cdTime->miliDifference() / 1000) *-1;
 
 			stringId.setStringId("@innate:equil_wait"); // You are still recovering from your last Command available in %DI seconds.
 			stringId.setDI(timeLeft);
 			creature->sendSystemMessage(stringId);
 			        return GENERALERROR;
 		       }
			
			int res = doCommonJediSelfChecks(creature);

			if (res != SUCCESS)
				return res;

			creature->renewBuff(buffCRC, duration, true);

			doForceCost(creature);

			if (!clientEffect.isEmpty())
				creature->playEffect(clientEffect, "");
				creature->addCooldown("avoid", 20 * 1000);

			return SUCCESS;
		} else {
			return doJediSelfBuffCommand(creature);
		}
	}
	
};

#endif //AVOIDINCAPACITATIONCOMMAND_H_
