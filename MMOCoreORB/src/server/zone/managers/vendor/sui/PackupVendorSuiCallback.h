/*
 * PackupVendorSuiCallback.h
 */

#ifndef PACKUPVENDORSUICALLBACK_H_
#define PACKUPVENDORSUICALLBACK_H_

#include "server/zone/objects/player/sui/SuiCallback.h"
#include "server/zone/managers/vendor/VendorManager.h"

class PackupVendorSuiCallback : public SuiCallback {
public:
	PackupVendorSuiCallback(ZoneServer* server)
		: SuiCallback(server) {
	}

	void run(CreatureObject* player, SuiBox* suiBox, uint32 eventIndex, Vector<UnicodeString>* args) {
		bool cancelPressed = (eventIndex == 1);

		if (!suiBox->isMessageBox() || cancelPressed)
			return;

		if (args->size() < 1)
			return;

		ManagedReference<SceneObject*> object = suiBox->getUsingObject().get();

		if (object == nullptr || !object->isVendor())
			return;

		TangibleObject* vendor = cast<TangibleObject*>(object.get());

		if (vendor == nullptr)
			return;

		Locker clocker(vendor, player);

		VendorManager::instance()->handlePackupVendor(player, vendor);
	}
};

#endif /* PACKUPVENDORSUICALLBACK_H_ */
