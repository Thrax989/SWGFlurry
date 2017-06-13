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
#include "server/zone/objects/player/sui/callbacks/BountyHuntSuiCallback.h"
#include "server/zone/objects/player/sui/inputbox/SuiInputBox.h"
#include "server/zone/packets/player/PlayMusicMessage.h"

class setPvpCommand : public QueueCommand {
public:

	setPvpCommand(const String& name, ZoneProcessServer* server)
		: QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		if(creature->getZone()->getZoneName() == "kaas") {
			creature->sendSystemMessage("Can not use /setpvp on Kaas");
			return GENERALERROR;
		}
		
		if (creature->isInCombat()) {
			creature->sendSystemMessage("@jedi_spam:not_while_in_combat");
			return GENERALERROR;
		}
		
		if(creature->hasSkill("force_rank_dark_novice") || creature->hasSkill("force_rank_light_novice")){
			creature->sendSystemMessage("Jedi in the FRS may not use this command.");
			return GENERALERROR;
		}
		
		PlayerObject* targetGhost = creature->getPlayerObject();
		Zone* zone = creature->getZone();
		
		if (targetGhost == NULL)
			return GENERALERROR;

		if(creature->getFactionStatus() == FactionStatus::OVERT){
			creature->sendSystemMessage("You are already Overt");
			return GENERALERROR;
		}

		if(creature->getFactionStatus() == FactionStatus::ONLEAVE || creature->getFactionStatus() == FactionStatus::COVERT){
			targetGhost->doFieldFactionChange(FactionStatus::OVERT);
		}
			//Broadcast to Server
 			String playerName = creature->getFirstName();
 			StringBuffer zBroadcast;
 			zBroadcast << "\\#00E604" << playerName << " \\#63C8F9 Overt Faction Status Is In Progress.";
			if(creature->getFactionStatus() == FactionStatus::ONLEAVE){
		}
			creature->getZoneServer()->getChatManager()->broadcastGalaxy(NULL, zBroadcast.toString());
		
		return SUCCESS;
	}

};

#endif //SETPVPCOMMAND_H_
