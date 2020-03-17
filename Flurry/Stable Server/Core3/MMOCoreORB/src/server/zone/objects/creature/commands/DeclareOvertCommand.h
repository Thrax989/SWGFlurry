/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef DECLAREOVERTCOMMAND_H_
#define DECLAREOVERTCOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/tangible/terminal/characterbuilder/CharacterBuilderTerminal.h"
#include "server/zone/objects/player/sui/inputbox/SuiInputBox.h"
#include "server/zone/packets/player/PlayMusicMessage.h"

class DeclareOvertCommand : public QueueCommand {
public:

	DeclareOvertCommand(const String& name, ZoneProcessServer* server)
		: QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		if (creature->hasSkill("force_rank_dark_novice") || creature->hasSkill("force_rank_light_novice")) {
 			creature->sendSystemMessage("Jedi in the FRS may not use this command.");
 			return GENERALERROR;
		}
		
 		PlayerObject* targetGhost = creature->getPlayerObject();
 		Zone* zone = creature->getZone();
 		
 		if (targetGhost == nullptr)
 			return GENERALERROR;
  
 		if (creature->getFactionStatus() == FactionStatus::ONLEAVE || creature->getFactionStatus() == FactionStatus::COVERT) {
 			creature->setFactionStatus(FactionStatus::OVERT);
		}

		return SUCCESS;
	}

};

#endif //DECLAREOVERTCOMMAND_H_
