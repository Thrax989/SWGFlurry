/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef FORCESHIELD1COMMAND_H_
#define FORCESHIELD1COMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"

class ForceShield1Command : public JediQueueCommand {
public:

	ForceShield1Command(const String& name, ZoneProcessServer* server)
		: JediQueueCommand(name, server) {
		buffCRC = BuffCRC::JEDI_FORCE_SHIELD_1;

		blockingCRCs.add(BuffCRC::JEDI_FORCE_SHIELD_2);

		singleUseEventTypes.add(ObserverEventType::FORCEBUFFHIT);

		skillMods.put("force_shield", 25);

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {
		return doJediSelfBuffCommand(creature);
	}

	void handleBuff(SceneObject* creature, ManagedObject* object, int64 param) {

		ManagedReference<CreatureObject*> creo = cast<CreatureObject*>( creature);
		if (creo == NULL)
			return;

		// Client Effect upon hit (needed)
		creo->playEffect("clienteffect/pl_force_shield_hit.cef", "");

		ManagedReference<PlayerObject*> playerObject = creo->getPlayerObject();
		if (playerObject == NULL)
			return;

		float baseForce = 0.5;

		int frsLightControlMod = creo->getSkillMod("force_control_light");
		int frsDarkControlMod = creo->getSkillMod("force_control_dark");

		if (frsLightControlMod > 0) {
			if (frsLightAdditionalCostMultiplier != 0)
				baseForce += (frsLightControlMod * frsLightAdditionalCostMultiplier);
		} else if (frsDarkControlMod > 0) {
			if (frsDarkAdditionalCostMultiplier != 0)
				baseForce += (frsDarkControlMod * frsDarkAdditionalCostMultiplier);
		}

		int forceCost = (int)(param * baseForce);

		if (playerObject->getForcePower() <= forceCost) { // Remove buff if not enough force.
			Buff* buff = creo->getBuff(BuffCRC::JEDI_FORCE_SHIELD_1);
			if (buff != NULL) {
				Locker locker(buff);

				creo->removeBuff(buff);
			}
		} else {
			playerObject->setForcePower(playerObject->getForcePower() - forceCost);
		}
	}

};

#endif //FORCESHIELD1COMMAND_H_
