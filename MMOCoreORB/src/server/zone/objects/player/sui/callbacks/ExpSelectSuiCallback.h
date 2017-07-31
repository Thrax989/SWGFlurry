/*
 * ExpSelectSuiCallback.h
 *
 *  Created on: Oct 25, 2016
 *      Author: Kurdtkobain
 */

#ifndef EXPSELECTSUICALLBACK_H_
#define EXPSELECTSUICALLBACK_H_


#include "server/zone/objects/player/sui/SuiCallback.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/Zone.h"

class ExpSelectSuiCallback : public SuiCallback {
public:
	ExpSelectSuiCallback(ZoneServer* server) 
	: SuiCallback(server) {
	}

	void run(CreatureObject* player, SuiBox* suiBox, uint32 eventIndex, Vector<UnicodeString>* args) {
		
		//player->sendSystemMessage("EXPSelectSuiCallback: Starting run()");
		
		if (args->size() <= 0){
			//player->sendSystemMessage("EXPSelectSuiCallback: No args passed");
			return;
		}
		Zone* zone = player->getZone();

		if (zone == NULL){
			//player->sendSystemMessage("EXPSelectSuiCallback: zone == NULL");
			return;
		}

		int option = Integer::valueOf(args->get(0).toString());
		//player->sendSystemMessage("EXPSelectSuiCallback: Setting mode with arg " + args->get(0).toString());

		switch (option) {

		case 0:
			player->setSelectedExpMode(1);
			player->setPersonalExpMultiplier(1.0);
			//player->sendSystemMessage("EXPSelectSuiCallback: Setting mode to 1");
		break;

		case 1:
			player->setSelectedExpMode(2);
			player->setPersonalExpMultiplier(2.0);
			//player->sendSystemMessage("EXPSelectSuiCallback: Setting mode to 2");
		break;

		case 2:
			player->setSelectedExpMode(3);
			player->setPersonalExpMultiplier(2.5);
			//player->sendSystemMessage("EXPSelectSuiCallback: Setting mode to 3");
		break;
		}
	}
};

#endif /* EXPSELECTSUICALLBACK_H_ */
