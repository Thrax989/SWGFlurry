/*--------------------------------------
   Creator : TOXIC
   Date : 04/08/2018
--------------------------------------*/
#ifndef PLAYER_BH_SUI_CALLBACK
#define PLAYER_BH_SUI_CALLBACK
#include "server/zone/objects/player/sui/SuiCallback.h"
#include "server/zone/managers/mission/MissionManager.h"
#include "server/zone/managers/visibility/VisibilityManager.h"
#include "server/zone/objects/player/sui/callbacks/BountyHuntSuiCallback.h"
#include "server/zone/objects/player/sui/inputbox/SuiInputBox.h"

class BountyHuntSuiCallback : public SuiCallback {

public:
	BountyHuntSuiCallback(ZoneServer* serv) : SuiCallback(serv) {

	}

  virtual void run(CreatureObject* creature, SuiBox* sui, uint32 eventIndex, Vector<UnicodeString>* args) {
    bool cancelPressed = (eventIndex == 1);

		if (!sui->isInputBox() || creature == NULL || cancelPressed || args->size() <= 0) {
			return;
		}

		try
		{
			int value = Integer::valueOf(args->get(0).toString());

			ManagedReference<SceneObject*> suiObject = sui->getUsingObject();
			CreatureObject* player = cast<CreatureObject*>(suiObject.get());

			if(value < 25000 || value > 1000000)
			{
				creature->sendSystemMessage("You have entered an insufficient amount, please try again.");
				ManagedReference<SuiInputBox*> input = new SuiInputBox(player, SuiWindowType::STRUCTURE_VENDOR_WITHDRAW);
				input->setPromptTitle("Bounty Hunter Request");
				input->setPromptText("Place a bounty on your killer. Bounties must be between 25,000 and 1,000,000 credits.");
				input->setUsingObject(player);
				input->setCallback(new BountyHuntSuiCallback(creature->getZoneServer()));

				creature->getPlayerObject()->addSuiBox(input);
				creature->sendMessage(input->generateMessage());
			}
			else if(creature->getBankCredits() + creature->getCashCredits() >= value)
			{
					if(creature->getBankCredits() > value) creature->subtractBankCredits(value);
					else
					{
						creature->subtractCashCredits(value - creature->getBankCredits());
						creature->subtractBankCredits(creature->getBankCredits());
					}
				MissionManager* missionManager = player->getZoneServer()->getMissionManager();
				missionManager->addPlayerToBountyList(player->getObjectID(), value);
				int bountyWorth = player->getScreenPlayState("deathBounty") + 1;
				player->setScreenPlayState("deathBounty", bountyWorth);
				player->playEffect("clienteffect/ui_missile_aquiring.cef", "");
				creature->playEffect("clienteffect/holoemote_haunted.cef", "head");
				creature->sendSystemMessage("Bounty has been successfully placed!");
				VisibilityManager::instance()->increaseVisibility(player, 8000);
				VisibilityManager::instance()->addToVisibilityList(player);
				//Broadcast to Server
				String playerName = player->getFirstName();
				StringBuffer zBroadcast;
				zBroadcast << "\\#ffb90f" << playerName << " is now on the bounty hunter \\#e51b1bTerminal!";
				player->getZoneServer()->getChatManager()->broadcastGalaxy(NULL, zBroadcast.toString());
			}
			else creature->sendSystemMessage("You have insufficient funds!");
		} catch(Exception& e) { }
	}
};

#endif
