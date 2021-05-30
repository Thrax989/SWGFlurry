/*
 * VendorControlDeviceImplementation.cpp
 */
#include "server/zone/managers/vendor/VendorManager.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/intangible/VendorControlDevice.h"
#include "server/zone/objects/tangible/TangibleObject.h"
#include "server/zone/objects/tangible/components/vendor/VendorDataComponent.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "server/zone/packets/scene/AttributeListMessage.h"
#include "server/zone/ZoneProcessServer.h"

void VendorControlDeviceImplementation::fillObjectMenuResponse(ObjectMenuResponse* menuResponse, CreatureObject* player) {
		ManagedReference<TangibleObject*> vendor = this->controlledObject.get();
		if (vendor == nullptr) {
			this->destroyObjectFromWorld(true);
			this->destroyObjectFromDatabase(true);
			error(player->getFirstName() + "'s vendor is null in VendorControlDeviceImplementation.");
			return;
		}

		menuResponse->addRadialMenuItem(18, 3, "@player_structure:vendor_status"); //Status
		menuResponse->addRadialMenuItem(19, 3, "@player_structure:pay_vendor_t"); //Pay Maintenance
		menuResponse->addRadialMenuItem(20, 3, "@player_structure:vendor_unpack"); //Un-Pack Vendor
		return;
}

int VendorControlDeviceImplementation::handleObjectMenuSelect(CreatureObject* player, byte selectedID) {
	ManagedReference<TangibleObject*> vendor = this->controlledObject.get();

	if (!isASubChildOf(player))
		return 0;

	DataObjectComponentReference* data = vendor->getDataObjectComponent();

	if (data == nullptr || data->get() == nullptr || !data->get()->isVendorData()) {
		error("Vendor has no data component");
		return 0;
	}

	VendorDataComponent* vendorData = cast<VendorDataComponent*>(data->get());

	if (vendorData == nullptr) {
		error("Vendor has wrong data component");
		return 0;
	}

	switch (selectedID) {
	case 18: {
		VendorManager::instance()->handleDisplayStatus(player, vendor);
		return 0;
	}

	case 19: {
		vendorData->payMaintanence();
		return 0;
	}

	case 20: {
		VendorManager::instance()->handleUnpackVendor(player, vendor);
		return 0;
	}

	default:
		return 0;
	};

	return 0;
}
