/*
 * DestroyControlDeviceCodeSuiCallback.h
 */

#ifndef DESTROYCONTROLDEVICECODESUICALLBACK_H_
#define DESTROYCONTROLDEVICECODESUICALLBACK_H_

#include "server/zone/objects/player/sessions/DestroyControlDeviceSession.h"
#include "server/zone/objects/player/sui/SuiCallback.h"

class DestroyControlDeviceCodeSuiCallback : public SuiCallback {
public:
	DestroyControlDeviceCodeSuiCallback(ZoneServer* serv) : SuiCallback(serv) {
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

		uint32 inputtedCode = Integer::valueOf(args->get(0).toString());

		if (!session->isDestroyCode(inputtedCode)) {
			player->sendSystemMessage("You have entered an incorrect code. Please try again.");
			session->cancelSession();
			return;
		}

		session->destroyControlDevice();
	}
};

#endif /* DESTROYCONTROLDEVICECODESUICALLBACK_H_ */
