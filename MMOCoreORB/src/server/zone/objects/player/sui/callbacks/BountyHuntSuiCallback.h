//PLAYER

#ifndef PLAYER_BH_SUI_CALLBACK
#define PLAYER_BH_SUI_CALLBACK

#include "server/zone/objects/player/sui/SuiCallback.h"
#include "server/zone/managers/visibility/VisibilityManager.h"
#include "server/zone/objects/player/sui/callbacks/BountyHuntSuiCallback.h"
#include "server/zone/objects/player/sui/inputbox/SuiInputBox.h"

class BountyHuntSuiCallback : public SuiCallback {

public:
	BountyHuntSuiCallback(ZoneServer* serv) : SuiCallback(serv) {

	}

void run(CreatureObject* creature, SuiBox* suiBox, uint32 eventIndex, Vector<UnicodeString>* args) {
		bool cancelPressed = (eventIndex == 1);

		if (creature == NULL || cancelPressed) {
			return;
		}

		try
		{
			//int value = Integer::valueOf(args->get(0).toString());

			int value = 25000;

			ManagedReference<SceneObject*> suiObject = suiBox->getUsingObject();
			CreatureObject* player = cast<CreatureObject*>(suiObject.get());
			if (creature->getBankCredits() + creature->getCashCredits() >= value) {
				if (creature->getBankCredits() > value) {
					creature->subtractBankCredits(value);
				} else {
					creature->subtractCashCredits(value - creature->getBankCredits());
					creature->subtractBankCredits(creature->getBankCredits());
				}
				int bountyWorth = player->getScreenPlayState("deathBounty") + 1;
				player->setScreenPlayState("deathBounty", bountyWorth);
				player->playEffect("clienteffect/ui_missile_aquiring.cef", "");
				creature->playEffect("clienteffect/holoemote_haunted.cef", "head");
				creature->sendSystemMessage("Bounty has been successfully placed!");
				//Broadcast to Server
				String playerName = player->getFirstName();
				StringBuffer zBroadcast;
				zBroadcast << "\\#ffb90f" << playerName << " is now on the bounty hunter \\#e51b1bTerminal!";
				player->getZoneServer()->getChatManager()->broadcastGalaxy(NULL, zBroadcast.toString());
				VisibilityManager::instance()->increaseVisibility(player, 8000);
			}
			else creature->sendSystemMessage("You have insufficient funds!");
		} catch(Exception& e) { }
	}
};

#endif
