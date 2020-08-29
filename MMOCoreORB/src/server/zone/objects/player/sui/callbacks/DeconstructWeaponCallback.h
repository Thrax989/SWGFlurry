
#ifndef DECONSTRUCTWEAPONCALLBACK_H_
#define DECONSTRUCTWEAPONCALLBACK_H_

#include "server/zone/objects/player/sui/SuiCallback.h"
#include "server/zone/objects/player/sui/SuiWindowType.h"
#include "server/zone/objects/player/sui/listbox/SuiListBox.h"
#include "server/zone/objects/scene/SceneObjectType.h"
#include "server/zone/managers/crafting/CraftingManager.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/objects/building/BuildingObject.h"
#include "server/zone/managers/player/PlayerManager.h"

class DeconstructWeaponCallback : public SuiCallback {
	PlayerObject* playerObj;
	WeaponObject* weaponObj;
	int failureChance;

public:
	DeconstructWeaponCallback(ZoneServer* serv, PlayerObject* player, WeaponObject* weapon, int chance) : SuiCallback(serv){
		playerObj = player;
		weaponObj = weapon;
		failureChance = chance;
	}

	void run(CreatureObject* player, SuiBox* sui, uint32 eventIndex, Vector<UnicodeString>* args) {
		bool cancelPressed = (eventIndex == 1);

		if (!sui->isDeconstructWeapon() || cancelPressed)
			return;

		if (args->size() < 1)
			return;

		ManagedReference<CraftingManager*> craftingManager = player->getZoneServer()->getCraftingManager();
		if(craftingManager == NULL) {
			return;
		}

		if (failureChance > 0){
			if (failureChance > System::random(10)){
				player->sendSystemMessage("The Weapon Broke from prior usage.");
				return;
			}
		}

		ManagedReference<SceneObject*> inventory = player->getSlottedObject("inventory");

		if (inventory == NULL || inventory->isContainerFullRecursive()) {
			player->sendSystemMessage("Your inventory is full, so the item could not be created.");
			return;
		}

		Reference<SharedObjectTemplate*> shot = TemplateManager::instance()->getTemplate(weaponObj->getDeconstructionTemplate().hashCode());

		if (shot == NULL || !shot->isSharedTangibleObjectTemplate()) {
			player->sendSystemMessage("Error, Report to Staff.");
			return;
		}

		ManagedReference<TangibleObject*> object = (player->getZoneServer()->createObject(shot->getServerObjectCRC(), 1)).castTo<TangibleObject*>();

		Locker locker(object);

		object->createChildObjects();

		// Set Crafter name and generate serial number
		String name = "Generated with Object Command";
		object->setCraftersName(name);

		StringBuffer customName;
		customName << object->getDisplayedName() <<  " Deconstructed Weapon Schematic";

		object->setCustomObjectName(customName.toString(), false);

		String serial = craftingManager->generateSerial();
		object->setSerialNumber(serial);

		if (inventory->transferObject(object, -1, true)) {
			inventory->broadcastObject(object, true);
		} else {
			object->destroyObjectFromDatabase(true);
			player->sendSystemMessage("Error transferring object to inventory.");
		}

		Locker locker2(weaponObj);
		weaponObj->destroyObjectFromWorld( true );
		weaponObj->destroyObjectFromDatabase( true );

		const String sysMsg = "Weapon Deconstructed Successfully.";
		player->sendSystemMessage(sysMsg);
	}
};
#endif /* PLACEBOUNTYSUICALLBACK_H_ */
