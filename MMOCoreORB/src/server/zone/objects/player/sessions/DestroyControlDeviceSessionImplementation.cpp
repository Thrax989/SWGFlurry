/*
 * DestroyControlDeviceSessionImplementation.cpp
 */

#include "server/zone/managers/object/ObjectManager.h"
#include "server/zone/managers/structure/StructureManager.h"
#include "server/zone/managers/vendor/VendorManager.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/intangible/ControlDevice.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/objects/player/sessions/DestroyControlDeviceSession.h"
#include "server/zone/objects/player/sui/callbacks/DestroyControlDeviceCodeSuiCallback.h"
#include "server/zone/objects/player/sui/callbacks/DestroyControlDeviceRequestSuiCallback.h"
#include "server/zone/objects/player/sui/inputbox/SuiInputBox.h"
#include "server/zone/objects/player/sui/messagebox/SuiMessageBox.h"
#include "server/zone/objects/structure/StructureObject.h"
#include "server/zone/objects/tangible/TangibleObject.h"

int DestroyControlDeviceSessionImplementation::initializeSession() {
	if (creatureObject == nullptr || object == nullptr || !object->isControlDevice())
		return cancelSession();

	creatureObject->addActiveSession(SessionFacadeType::DESTROYCONTROLDEVICE, _this.getReferenceUnsafeStaticCast());

	Locker clocker(object, creatureObject);

	CreatureObject* player = cast<CreatureObject*>( creatureObject.get());

	StringBuffer body;
	if (object->isStructureControlDevice())
		body << "You are about to DESTROY this structure control device. Doing so will destroy the contained structure and ALL items inside the structure.\n\n";
	else if (object->isVendorControlDevice())
		body << "You are about to DESTROY this vendor control device. Doing so will destroy the contained vendor and ALL items on the vendor.\n\n";
	else
		return cancelSession();

	body << "Do you wish to continue?";

	ManagedReference<SuiMessageBox*> sui = new SuiMessageBox(player, SuiWindowType::DESTROY_CONTROLDEVICE);
	sui->setCallback(new DestroyControlDeviceRequestSuiCallback(creatureObject->getZoneServer()));
	sui->setCancelButton(true, "@no");
	sui->setOkButton(true, "@yes");
	sui->setUsingObject(object);
	sui->setPromptTitle(object->getDisplayedName());
	sui->setPromptText(body.toString());

	player->getPlayerObject()->addSuiBox(sui);
	player->sendMessage(sui->generateMessage());

	return 0;
}

int DestroyControlDeviceSessionImplementation::sendDestroyCode() {
	if (creatureObject == nullptr || object == nullptr || !object->isControlDevice())
		return cancelSession();

	Locker objectLock(object);
	Locker clocker(creatureObject, object);

	CreatureObject* player = cast<CreatureObject*>( creatureObject.get());

	destroyCode = System::random(899999) + 100000;

	StringBuffer body;
	String suiTitle = "";
	if (object->isStructureControlDevice()) {
		body << "If you wish to continue DESTROYING this structure control device, please enter the following code into the inputbox.\n\n";
		suiTitle = "CONFIRM STRUCTURE CONTROL DEVICE DESTRUCTION";
	} else if (object->isVendorControlDevice()) {
		body << "If you wish to continue DESTROYING this vendor control device, please enter the following code into the inputbox.\n\n";
		suiTitle = "CONFIRM VENDOR CONTROL DEVICE DESTRUCTION";
	} else {
		return cancelSession();
	}

	body << "Code: " << destroyCode;

	ManagedReference<SuiInputBox*> sui = new SuiInputBox(player);
	sui->setCallback(new DestroyControlDeviceCodeSuiCallback(player->getZoneServer()));
	sui->setUsingObject(object);
	sui->setPromptTitle(suiTitle);
	sui->setPromptText(body.toString());
	sui->setCancelButton(true, "@cancel");
	sui->setMaxInputSize(6);

	player->getPlayerObject()->addSuiBox(sui);
	player->sendMessage(sui->generateMessage());

	return 0;
}

int DestroyControlDeviceSessionImplementation::destroyControlDevice() {
	if (creatureObject == nullptr || object == nullptr || !object->isControlDevice())
		return cancelSession();

	creatureObject->sendSystemMessage("Processing confirmed control device destruction...");

	ControlDevice* controlDevice = cast<ControlDevice*>(object.get());

	if (controlDevice == nullptr)
		return cancelSession();

	if (object->isStructureControlDevice()) {
		StructureObject* structure = cast<StructureObject*>(controlDevice->getControlledObject());

		if (structure == nullptr)
			return cancelSession();

		StructureManager::instance()->destroyStructure(structure, false, "the structure's control device was deleted.");
	} else if (object->isVendorControlDevice()) {
		TangibleObject* vendor = cast<TangibleObject*>(controlDevice->getControlledObject());

		if (vendor == nullptr)
			return cancelSession();

		VendorManager::instance()->destroyVendor(vendor);
	}

	return cancelSession();
}
