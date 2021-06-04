/*
 * RelistItemsSuiCallback.h
 *
 *  Created on: June 11, 2018
 *      Author: Dirge
 */

#ifndef RELISTITEMSSUICALLBACK_H_
#define RELISTITEMSSUICALLBACK_H_

#include "server/zone/objects/player/sui/SuiCallback.h"
#include "server/zone/managers/vendor/VendorManager.h"

class RelistItemsSuiCallback : public SuiCallback {
public:
	RelistItemsSuiCallback(ZoneServer* server)
		: SuiCallback(server) {
	}

	void run(CreatureObject* player, SuiBox* suiBox, uint32 eventIndex, Vector<UnicodeString>* args) {
		bool cancelPressed = (eventIndex == 1);

		if (cancelPressed)
			return;

		ManagedReference<SceneObject*> object = suiBox->getUsingObject().get();
		if (object == nullptr || !object->isVendor())
			return;

		TangibleObject* vendor = cast<TangibleObject*>(object.get());
		if (vendor == nullptr)
			return;

		VendorManager::instance()->handleRelistItems(player, vendor);
	}
};

#endif /* RELISTITEMSSUICALLBACK_H_ */
