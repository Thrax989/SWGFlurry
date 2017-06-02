/*
 				Copyright <SWGEmu>
		See file COPYING for copying conditions. */

/**
 * file InvisibleDelayEvent.h
 * author Polonel
 * date 10.01.2010
 */

#ifndef InvisibleDelayEvent_H_
#define InvisibleDelayEvent_H_

#include "engine/engine.h"
#include "server/zone/managers/objectcontroller/ObjectController.h"
#include "server/zone/packets/chat/ChatSystemMessage.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/packets/tangible/UpdatePVPStatusMessage.h"

class InvisibleDelayEvent: public Task {
	ManagedReference<CreatureObject*> player;

public:
	InvisibleDelayEvent(CreatureObject* pl) {
		player = pl;
	}

	void run() {
		Locker playerLocker(player);

		PlayerObject* targetGhost = player->getPlayerObject();

		try {
			if (player->isOnline() && !targetGhost->isLoggingOut()) {
				player->removePendingTask("InvisibleDelayEvent");

				ManagedReference<Zone*> zone = player->getZone();

				if (zone == NULL)
					return;

				Locker zoneLocker(zone);

				if (!player->isInvisible()) {

				SortedVector<ManagedReference<QuadTreeEntry*> >* closeObjects = player->getCloseObjects();

				for (int i = 0; i < closeObjects->size(); ++i) {
						SceneObject* scno = cast<SceneObject*>( closeObjects->get(i).get());

				if (scno != player && !scno->isBuildingObject())
								scno->notifyDissapear(player);

					}
				player->sendSystemMessage("You are now invisible to other players and creatures.");
				player->setInvisible(true);
			
				} else {
				player->sendSystemMessage("You are now visible to all players and creatures.");
				player->setInvisible(false);
				
					SortedVector<ManagedReference<QuadTreeEntry*> >* closeObjects = player->getCloseObjects();

					for (int i = 0; i < closeObjects->size(); ++i) {
						SceneObject* scno = cast<SceneObject*>( closeObjects->get(i).get());

						if (scno != player && !scno->isBuildingObject())
								scno->notifyInsert(player);

					}

				}

			}

		} catch (Exception& e) {
			player->error("unreported exception caught in InvisibleDelayEvent::run");
		}

	}

};

#endif /* InvisibleDelayEvent_H_ */
