/*
 * DestroyControlDeviceRequestSuiCallback.h
 */

#ifndef DESTROYCONTROLDEVICEREQUESTSUICALLBACK_H_
#define DESTROYCONTROLDEVICEREQUESTSUICALLBACK_H_

#include "server/zone/objects/player/sessions/DestroyControlDeviceSession.h"
#include "server/zone/objects/player/sui/SuiCallback.h"

class DestroyControlDeviceRequestSuiCallback : public SuiCallback {
public:
	DestroyControlDeviceRequestSuiCallback(ZoneServer* serv) : SuiCallback(serv) {
	}

	void run(CreatureObject* player, SuiBox* sui, uint32 eventIndex, Vector<UnicodeString>* args) {
		bool cancelPressed = (eventIndex == 1);

		ManagedReference<DestroyControlDeviceSession*> session = player->getActiveSession(SessionFacadeType::DESTROYCONTROLDEVICE).castTo<DestroyControlDeviceSession*>();

		if (session == nullptr)
			return;

		if (cancelPressed) {
			session->cancelSession();
			return;
		}

		session->sendDestroyCode();
	}
};

#endif /* DESTROYCONTROLDEVICEREQUESTSUICALLBACK_H_ */
