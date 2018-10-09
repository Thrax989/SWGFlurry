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
			player->setFaction("Neutral");
			player->sendSystemMessage("You have joined the Neutral faction.");
		break;

		case 1:
			player->setFaction("Imperial");
			player->sendSystemMessage("You have joined the Imperial faction.");
		break;

		case 2:
			player->setFaction("Rebel");
			player->sendSystemMessage("You have joined the Rebel faction.");
		break;
		}
	}
};

#endif /* FACTIONSELECTSUICALLBACK_H_ */
