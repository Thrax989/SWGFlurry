
#ifndef ADDWEAPONDOTCALLBACK_H_
#define ADDWEAPONDOTCALLBACK_H_

#include "server/zone/objects/player/sui/SuiCallback.h"
#include "server/zone/objects/player/sui/SuiWindowType.h"
#include "server/zone/objects/player/sui/listbox/SuiListBox.h"
#include "server/zone/objects/scene/SceneObjectType.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/objects/building/BuildingObject.h"
#include "server/zone/managers/player/PlayerManager.h"

class AddWeaponDotCallback : public SuiCallback {
	PlayerObject* playerObj;
	WeaponObject* weaponObj;

public:
	AddWeaponDotCallback(ZoneServer* serv, PlayerObject* player, WeaponObject* weapon) : SuiCallback(serv){
		playerObj = player;
		weaponObj = weapon;
	}

	void run(CreatureObject* player, SuiBox* sui, uint32 eventIndex, Vector<UnicodeString>* args) {
		bool cancelPressed = (eventIndex == 1);

		if (cancelPressed)
			return;

		if (args->size() < 1)
			return;

		int expUsed = Integer::valueOf(args->get(1).toString());

		int hamSelect = System::random(2);
		int dotType = System::random(3);
		int hamValue = 0;
		int finalType = 0;

		if (expUsed == 0){
			return;
		}

		switch(hamSelect){

			case 0:
				hamValue = 0;
				break;

			case 1:
				hamValue = 3;
				break;

			case 2:
				hamValue = 6;
				break;

			default: 0;

		}

		switch(dotType){

			case 0:
				finalType = 1;
				break;

			case 1:
				finalType = 2;
				break;

			case 2:
				finalType = 3;
				break;

			case 3:
				finalType = 4;
				break;

			default: 1;

		}

		//int dotType = 1;
		int value = 100 * expUsed;
		weaponObj->addDotType(finalType);
		weaponObj->addDotAttribute(hamValue);
		weaponObj->addDotStrength((value / 2));
		weaponObj->addDotDuration((value / 2));
		weaponObj->addDotPotency((value / 5));
		weaponObj->addDotUses((value * 100));
		playerObj->addExperience("exotic_slice", (expUsed * -1), true);

		const String sysMsg = "Dot Applied too ";
		player->sendSystemMessage(sysMsg);
	}
};
#endif /* PLACEBOUNTYSUICALLBACK_H_ */
