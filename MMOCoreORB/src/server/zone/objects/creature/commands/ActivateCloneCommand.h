/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef ACTIVATECLONECOMMAND_H_
#define ACTIVATECLONECOMMAND_H_

#include "server/zone/ZoneServer.h"
#include "server/zone/managers/player/PlayerManager.h"
#include "server/zone/objects/player/sui/callbacks/FieldFactionChangeSuiCallback.h"
#include "server/zone/objects/player/sui/messagebox/SuiMessageBox.h"
#include "server/zone/objects/player/sui/inputbox/SuiInputBox.h"
#include "server/zone/objects/player/sui/listbox/SuiListBox.h"
#include "server/zone/objects/player/sui/SuiWindowType.h"

class ActivateCloneCommand : public QueueCommand {
public:

	ActivateCloneCommand(const String& name, ZoneProcessServer* server)
		: QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		if (!creature->isPlayerCreature())
			return GENERALERROR;

		CreatureObject* player = cast<CreatureObject*>(creature);

		if (!player->isDead())
			return GENERALERROR;

		if (player->isDead() && !isCloning()) {

			ManagedReference<SuiBox*> cloneBox = getSuiBoxFromWindowType(SuiWindowType::CLONE_REQUEST);
			PlayerManager* playerManager = server->getZoneServer()->getPlayerManager();

			if (cloneBox != nullptr) {
				cloneBox->clearOptions();
				sendMessage(cloneBox->generateMessage());
			} else {
				playerManager->getPlayerManager()->sendActivateCloneRequest(player);
			}
		}

		playerManager->sendActivateCloneRequest(player);

		return SUCCESS;
	}

};

#endif //ACTIVATECLONECOMMAND_H_
