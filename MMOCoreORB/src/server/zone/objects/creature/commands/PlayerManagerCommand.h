/*
 * PlayerManagerCommand.h
 *
 *  Created on: 2/28/2012
 *      Author: Kyle
 */

#ifndef PLAYERMANAGERCOMMAND_H_
#define PLAYERMANAGERCOMMAND_H_

#include "engine/engine.h"
#include "server/zone/managers/player/PlayerManager.h"

class PlayerManagerCommand {
public:
	static int executeCommand(CreatureObject* creature, uint64 target, const UnicodeString& arguments) {
		if (!creature->isPlayerCreature())
			return 1;

		ManagedReference<CreatureObject*> player = cast<CreatureObject*>(creature);
		ManagedReference<PlayerObject*> ghost = player->getPlayerObject();

		if (ghost == NULL || ghost->getAdminLevel() < 15) {
			return 1;
		}

		ManagedReference<PlayerManager*> playerManager = player->getZoneServer()->getPlayerManager();

		if (playerManager == NULL) {
			creature->sendSystemMessage("playerManager not found");
			return 0;
		}

		//Parse the weather command.
		StringTokenizer tokenizer(arguments.toString());
		if (!tokenizer.hasMoreTokens()) {
			sendSyntax(player);
			return 1;
		}

		String command;
		tokenizer.getStringToken(command);
		command = command.toLowerCase();

		if (command == "path") {
			Vector3 pos = creature->getWorldPosition();
			Sphere sphere(pos, 125);
			Vector3 result;
			PathFinderManager::instance()->getSpawnPointInArea(sphere, creature->getZone(), result);
		}
		if (command == "listjedi") {
			player->sendSystemMessage("Please wait. This may take a while.");

			Core::getTaskManager()->executeTask([=] () {
				playerManager->sendAdminJediList(player);
			}, "ListJediLambda");

			return 0;

		} else if (command == "listfrs") {
			player->sendSystemMessage("Please wait. This may take a while.");

			Core::getTaskManager()->executeTask([=] () {
				playerManager->sendAdminFRSList(player);
			}, "ListFrsLambda");

			return 0;

		} else if (command == "listadmins") {
			player->sendSystemMessage("Please wait. This may take a while.");

			Core::getTaskManager()->executeTask([=] () {
				playerManager->sendAdminList(player);
			}, "ListAdminsLambda");

			return 0;

		} else if (command == "setxpmodifier") {
			if (!tokenizer.hasMoreTokens()) {
				sendSyntax(player);
				return 1;
			}

			float multiplier = tokenizer.getFloatToken();

			playerManager->setExperienceMultiplier(multiplier);

			StringBuffer message;
			message << "Experience now increased by " << multiplier << "x";

			player->sendSystemMessage(message.toString());

		} else if (command == "setpersonalxpmode") {
			if (!tokenizer.hasMoreTokens()) {
				sendSyntax(player);
				return 1;
			}

			int option = tokenizer.getIntToken();

			switch (option) {

        			case 1:
					creature->setSelectedExpMode(2);
					creature->setPersonalExpMultiplier(5.0);
				break;

				case 2:
					creature->setSelectedExpMode(3);
					creature->setPersonalExpMultiplier(10.0);
				break;
          
        			default:
					creature->setSelectedExpMode(1);
					creature->setPersonalExpMultiplier(1.0);
				break;
			}

			StringBuffer message;
			message << "Personal experience now set to " << creature->getPersonalExpMultiplier() << "x";

			player->sendSystemMessage(message.toString());

		} else {
			sendSyntax(player);
			return 1;
		}

		return 0;

	}

	static void sendSyntax(CreatureObject* player) {
		if (player != NULL) {
			player->sendSystemMessage("Syntax: /server playermanager [setxpmodifier] [value]");
			player->sendSystemMessage("Syntax: /server playermanager [listjedi]");
			player->sendSystemMessage("Syntax: /server playermanager [list_frsjedi]");
			player->sendSystemMessage("Syntax: /server playermanager [listadmins]");
			player->sendSystemMessage("Syntax: /server playermanager [setpersonalxpmode] [value 0-2]");
		}
	}
};

#endif /* PLAYERMANAGERCOMMAND_H_ */