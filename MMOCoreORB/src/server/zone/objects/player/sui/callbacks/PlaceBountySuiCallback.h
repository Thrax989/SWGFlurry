/*
 * PlaceBountySuiCallback.h
 */

#ifndef PLACEBOUNTYSUICALLBACK_H_
#define PLACEBOUNTYSUICALLBACK_H_

#include "server/zone/managers/mission/MissionManager.h"
#include "server/zone/objects/player/sui/SuiCallback.h"
#include "server/chat/ChatManager.h"

class PlaceBountySuiCallback: public SuiCallback {
private:
	ManagedReference<CreatureObject*> killerPlayer;
	int reward;

public:
	PlaceBountySuiCallback(ZoneServer* server, CreatureObject* killer, int reward) :
		SuiCallback(server) {
		this->killerPlayer = killer;
		this->reward = reward;
	}

	void run(CreatureObject* player, SuiBox* suiBox, uint32 eventIndex, Vector<UnicodeString>* args) {
		bool cancelPressed = (eventIndex == 1);

		if (!suiBox->isMessageBox() || cancelPressed)
			return;

		MissionManager* missionManager = server->getMissionManager();
		if (missionManager == nullptr)
			return;

		PlayerObject* killerGhost = killerPlayer->getPlayerObject();
		if (killerGhost == nullptr)
			return;

		ChatManager* chatManager = player->getZoneServer()->getChatManager();

		int bank = player->getBankCredits();

		if (reward > bank) {
			player->sendSystemMessage("You have insufficient credits to place a bounty on " + killerPlayer->getFirstName() + ".");
			return;
		}

		player->subtractBankCredits(reward);

		killerGhost->updatePlayerBountyTimestamp(172800000); //48 Hours
		killerGhost->setBountyPlacerId(player->getObjectID());
		killerGhost->setBountyReward(reward);
		missionManager->addPlayerToBountyList(killerPlayer->getObjectID(), reward);

		if (killerGhost->isOnline())
		missionManager->updatePlayerBountyOnlineStatus(killerPlayer->getObjectID(), true);
		player->sendSystemMessage("You have successfully placed a bounty on " + killerPlayer->getFirstName() + ".");
		//Broadcast to Server
		Zone* zone = player->getZone();
		String planetName = zone->getZoneName();
                Vector3 worldPosition = player->getWorldPosition();
		String name = " Location (" + String::valueOf((int)player->getWorldPositionX()) + ", " + String::valueOf((int)player->getWorldPositionZ()) + ", " + String::valueOf((int)player->getWorldPositionY()) + ")";
		StringBuffer zBroadcast;
		zBroadcast << "\\#ffb90f" << killerPlayer->getFirstName() << " is now on the bounty hunter \\#e51b1bTerminal!";
		killerPlayer->playEffect("clienteffect/ui_missile_aquiring.cef", "");
		killerPlayer->getZoneServer()->getChatManager()->broadcastGalaxy(nullptr, zBroadcast.toString());
		//Broadcast player has died forward to discord channel. created by :TOXIC
		StringBuffer zGeneral;
		zGeneral << " Has Placed " << killerPlayer->getFirstName() << " On The Bounty Terminal For " << reward << " Credits";
		zGeneral << " Target Last Seen " << " On Planet " << planetName << name;	
		chatManager->handleGeneralChat(player, zGeneral.toString());
	}
};

#endif /* PLACEBOUNTYSUICALLBACK_H_ */
