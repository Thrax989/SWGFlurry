/*
 * FindLostItemsListSuiCallback.h
 *
 *  Created on: Jan 11, 2021
 *      Author: Phoenix
 */
#ifndef FINDLOSTITEMSLISTSUICALLBACK_H_
#define FINDLOSTITEMSLISTSUICALLBACK_H_

#include "server/zone/objects/player/sui/SuiCallback.h"
#include "server/zone/objects/building/BuildingObject.h"
#include "server/zone/managers/structure/StructureManager.h"

class FindLostItemsListSuiCallback : public SuiCallback {
public:
	FindLostItemsListSuiCallback(ZoneServer* server)
		: SuiCallback(server) {
	}

	void run(CreatureObject* player, SuiBox* suiBox, uint32 eventIndex, Vector<UnicodeString>* args) {
		bool cancelPressed = (eventIndex == 1);

		if (!suiBox->isListBox() || cancelPressed)
			return;

		if (args->size() < 1)
			return;

		int index = Integer::valueOf(args->get(0).toString());

		if (index == -1)
			return;

        	if (player == nullptr)
           		return;

		SuiListBox* listBox = cast<SuiListBox*>( suiBox);

        	uint64 selectedObject = listBox->getMenuObjectID(index);

        	SceneObject* object = server->getObject(selectedObject);

        	if (object != nullptr) {
            		object->teleport(player->getPositionX(), player->getPositionZ(), player->getPositionY(), player->getParentID());
            		object->setDirection(1, 0, 0, 0);
            		player->sendSystemMessage("Moved selected item to your location.");
        	} else {
			player->sendSystemMessage("Couldn't find item.");
        	}
	}
};

#endif /* FINDLOSTITEMSLISTSUICALLBACK_H_ */
