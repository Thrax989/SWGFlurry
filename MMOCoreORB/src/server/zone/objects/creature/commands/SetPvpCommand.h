/*
 * PLEASE DO NOT STEAL OUR WORK
 * ASK BEFOR USING
 * Contact Me Here http://projectphoenix.com.shivtr.com/
 * Created on: 9/21/2016
 * Authors: Kurdtkobain
 */
 
#ifndef SETPVPCOMMAND_H_

#define SETPVPCOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/tangible/terminal/characterbuilder/CharacterBuilderTerminal.h"
//#include "server/zone/objects/player/sui/callbacks/BountyHuntSuiCallback.h"
#include "server/zone/objects/player/sui/inputbox/SuiInputBox.h"
#include "server/zone/packets/player/PlayMusicMessage.h"

class SetPvpCommand : public QueueCommand {
public:

	SetPvpCommand(const String& name, ZoneProcessServer* server)
		: QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;
		
		if (creature->isInCombat()) {
			creature->sendSystemMessage("@jedi_spam:not_while_in_combat");
			return GENERALERROR;
		}
		
		if(creature->hasSkill("force_rank_dark_novice") || creature->hasSkill("force_rank_light_novice") || creature->hasSkill("combat_jedi_novice")){
			creature->sendSystemMessage("You may not use this command.");
			return GENERALERROR;
		}

		if (creature->getFaction() != 370444368){
			creature->sendSystemMessage("You may not use this command if you are not a Rebel Or Imperial, You must be apart of the GCW.");
			return GENERALERROR;
		}

		if (creature->getFaction() != 3679112276){
			creature->sendSystemMessage("You may not use this command if you are not a Rebel Or Imperial, You must be apart of the GCW.");
			return GENERALERROR;
		}
		
		if (!creature->checkCooldownRecovery("setpvp")) {
  			StringIdChatParameter stringId;
  
  			Time* cdTime = creature->getCooldownTime("setpvp");
  
  			int timeLeft = floor((float)cdTime->miliDifference() / 1000) *-1;
  
  			stringId.setStringId("@innate:equil_wait"); // You are still recovering from your last Command available in %DI seconds.
  			stringId.setDI(timeLeft);
  			creature->sendSystemMessage(stringId);
  			        return GENERALERROR;
  		       }
		
		PlayerObject* targetGhost = creature->getPlayerObject();
		Zone* zone = creature->getZone();
		
		if (targetGhost == nullptr)
			return GENERALERROR;

		if(creature->getFactionStatus() == FactionStatus::ONLEAVE || creature->getFactionStatus() == FactionStatus::COVERT){
			creature->setFactionStatus(FactionStatus::OVERT);
		}else{
			creature->setFactionStatus(FactionStatus::ONLEAVE);
		}
			//Broadcast to Server
 			String playerName = creature->getFirstName();
 			StringBuffer zBroadcast;
 			zBroadcast << "\\#00E604" << playerName << " \\#63C8F9 Is Now ";
		        creature->addCooldown("setpvp", 15 * 1000);
			if(creature->getFactionStatus() == FactionStatus::ONLEAVE){
				zBroadcast << "Onleave";
			}else{
				zBroadcast << "Overt";
			}
			creature->getZoneServer()->getChatManager()->broadcastGalaxy(nullptr, zBroadcast.toString());
		
		return SUCCESS;
	}

};

#endif //SETPVPCOMMAND_H_
