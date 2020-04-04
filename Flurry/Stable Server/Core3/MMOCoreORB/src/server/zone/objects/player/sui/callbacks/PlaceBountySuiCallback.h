/*
 * PlaceBountySuiCallback.h
 */

#ifndef PLACEBOUNTYSUICALLBACK_H_
#define PLACEBOUNTYSUICALLBACK_H_

#include "server/zone/managers/mission/MissionManager.h"
#include "server/zone/objects/player/sui/SuiCallback.h"

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
	}
};

#endif /* PLACEBOUNTYSUICALLBACK_H_ */
