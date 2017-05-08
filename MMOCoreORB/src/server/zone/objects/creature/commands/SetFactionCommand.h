/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef SETFACTIONCOMMAND_H_
#define SETFACTIONCOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/tangible/TangibleObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/objects/player/FactionStatus.h"

class SetFactionCommand : public QueueCommand {
public:

    SetFactionCommand(const String& name, ZoneProcessServer* server)
        : QueueCommand(name, server) {

    }

    int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {
        CreatureObject* player = cast<CreatureObject>(creature);

        ManagedReference<SceneObject> obj = server->getZoneServer()->getObject(target);

        if (obj == NULL || !obj->isTangibleObject())
            return INVALIDTARGET;

        TangibleObject* tano = cast<TangibleObject*>( obj.get());

        //First, check if they passed a name with the command.
        UnicodeTokenizer tokenizer(arguments);
        tokenizer.setDelimeter(" ");

        String faction;
        tokenizer.getStringToken(faction);

        creature->broadcastMessage(new CombatAction(creature, tano, faction.hashCode(), 0, CombatManager::DEFAULTTRAIL), true);

        std::cout << "SetFaction: " << faction.toCharArray() << "\n";

        return SUCCESS;
    }
};

#endif //SETFACTIONCOMMAND_H_
