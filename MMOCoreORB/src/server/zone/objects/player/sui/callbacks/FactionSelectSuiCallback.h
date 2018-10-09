/*
 * FactionSelectSuiCallback.h
 *
 *  Created on: 10/8/2018
 *      Author: TOXIC
 */

#ifndef FACTIONSELECTSUICALLBACK_H_
#define FACTIONSELECTSUICALLBACK_H_


#include "server/zone/objects/player/sui/SuiCallback.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/Zone.h"

class FactionSelectSuiCallback : public SuiCallback {
public:
	FactionSelectSuiCallback(ZoneServer* server) 
	: SuiCallback(server) {
	}

	void run(CreatureObject* player, SuiBox* suiBox, uint32 eventIndex, Vector<UnicodeString>* args) {
		
		if (args->size() <= 0){
			return;
		}
		Zone* zone = player->getZone();

		if (zone == NULL){
			return;
		}

		int option = Integer::valueOf(args->get(0).toString());

		switch (option) {

		case 0:
			player->setFaction(0);
			player->sendSystemMessage("You have joined the Neutral faction.");
			server->getPlayerManager()->sendStartingLocationsTo(player);
		break;

		case 1:
			player->setFaction(3679112276);
			player->sendSystemMessage("You have joined the Imperial faction.");
			server->getPlayerManager()->sendStartingLocationsTo(player);
		break;

		case 2:
			player->setFaction(370444368);
			player->sendSystemMessage("You have joined the Rebel faction.");
			server->getPlayerManager()->sendStartingLocationsTo(player);
		break;
		}
	}
};

#endif /* FACTIONSELECTSUICALLBACK_H_ */
