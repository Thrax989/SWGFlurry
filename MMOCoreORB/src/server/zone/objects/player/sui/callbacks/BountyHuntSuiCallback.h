/*--------------------------------------
   Creator : TOXIC
   Date : 04/08/2018
--------------------------------------*/
#ifndef PLAYER_BH_SUI_CALLBACK
#define PLAYER_BH_SUI_CALLBACK
#include "server/zone/objects/player/sui/SuiCallback.h"
#include "server/zone/managers/visibility/VisibilityManager.h"
#include "server/zone/objects/player/sui/callbacks/BountyHuntSuiCallback.h"
#include "server/zone/objects/player/sui/inputbox/SuiInputBox.h"
#include "server/zone/managers/mission/MissionManager.h"

class BountyHuntSuiCallback : public SuiCallback {

public:
	BountyHuntSuiCallback(ZoneServer* serv) : SuiCallback(serv) {
	}
void run(CreatureObject* creature, SuiBox* suiBox, uint32 eventIndex, Vector<UnicodeString>* args) {
		bool cancelPressed = (eventIndex == 1);
		int newBounty = 0;
		int refund = 0;
		int fee = 0;
		int currentBounty = 0;

		if (creature == NULL || cancelPressed) {
			return;
		}

		try
		{
			int value = Integer::valueOf(args->get(0).toString());

			if (value <= 1000)
				value = 1000;
				
			fee = value * .2;

			ManagedReference<SceneObject*> suiObject = suiBox->getUsingObject();
			CreatureObject* player = cast<CreatureObject*>(suiObject.get());
			MissionManager* missionManager = creature->getZoneServer()->getMissionManager();
			int currentBounty = missionManager->getPlayerBounty(player->getObjectID());

			newBounty = currentBounty+(value * .8); //Fee for BH
						
			if (creature->getBankCredits() + creature->getCashCredits() >= value) {
				VisibilityManager::instance()->clearVisibility(player);
				if (creature->getBankCredits() > value) {
					creature->subtractBankCredits(value);
				} else {
					creature->subtractCashCredits(value - creature->getBankCredits());
					creature->subtractBankCredits(creature->getBankCredits());
				}
			if (newBounty >= 2500000){
				refund = newBounty - 2500000;
				newBounty = 2500000;
			}
				creature->sendSystemMessage("Set total bounty to " + String::valueOf(newBounty));	
				player->playEffect("clienteffect/ui_missile_aquiring.cef", "");
				creature->playEffect("clienteffect/holoemote_haunted.cef", "head");
				creature->sendSystemMessage("Bounty has been successfully placed!");
				VisibilityManager::instance()->addPlayerToBountyList(player,(newBounty));
				missionManager->updatePlayerBountyReward(player->getObjectID(), newBounty);
			if (refund > 0){	
			creature->sendSystemMessage("Refunding excess bounty of " + String::valueOf(refund));		
			creature->addBankCredits(refund);
			}
				//Broadcast to Server
				String playerName = player->getFirstName();
				StringBuffer zBroadcast;
				zBroadcast << "\\#ffffff The Bounty Hunter guild has acquired a new target.\\#ffffff";
				player->getZoneServer()->getChatManager()->broadcastGalaxy(NULL, zBroadcast.toString());
				VisibilityManager::instance()->setVisibility(player, 8000);
			}
			else creature->sendSystemMessage("You have insufficient funds! You need at least 1,000cr in Cash or Bank.");
		} catch(Exception& e) { }
	}
};
#endif
