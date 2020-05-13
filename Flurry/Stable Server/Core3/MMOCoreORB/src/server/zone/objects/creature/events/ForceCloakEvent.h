/*
                Copyright <SWGEmu>
        See file COPYING for copying conditions. */

#ifndef FORCECLOAKEVENT_H_
#define FORCECLOAKEVENT_H_

#include "engine/engine.h"

#include "server/zone/objects/creature/events/CloakEvent.h"

#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/packets/chat/ChatSystemMessage.h"

class ForceCloakEvent : public CloakEvent {
public:
    ForceCloakEvent(CreatureObject* pl) : CloakEvent(pl) {
        Logger::setLoggingName("ForceCloakEvent");
        Logger::setLogging(true);
    }

    static int getForceCost() { return 400; }

protected:
    virtual const char* getClientEffect() const { return "clienteffect/death_trooper_anti_virus.cef"; }

    virtual void processCost() {
        ManagedReference<PlayerObject*> playerObject = player->getPlayerObject();
        playerObject->setForcePower(playerObject->getForcePower() - getForceCost());

        if (cloakApplied) {
            player->sendSystemMessage("Your force drains to keep you hidden");
        }
    }

    virtual int hasResourcesForCloak() {
        ManagedReference<PlayerObject*> playerObject = player->getPlayerObject();
        return  playerObject->getForcePower() >= getForceCost();
    }
};

#endif /* FORCECLOAKEVENT_H_ */