/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef FORCEARMOR2COMMAND_H_
#define FORCEARMOR2COMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"

class ForceArmor2Command : public JediQueueCommand {
public:

	ForceArmor2Command(const String& name, ZoneProcessServer* server)
		: JediQueueCommand(name, server) {

		buffCRC = BuffCRC::JEDI_FORCE_ARMOR_2;

		overrideableCRCs.add(BuffCRC::JEDI_FORCE_ARMOR_1);

		singleUseEventTypes.add(ObserverEventType::FORCEBUFFHIT);

		skillMods.put("force_armor", 45);
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {
		return doJediSelfBuffCommand(creature);
	}

	void handleBuff(SceneObject* creature, ManagedObject* object, int64 param) {

		ManagedReference<CreatureObject*> creo = cast<CreatureObject*>( creature);
		if (creo == NULL)
			return;

		// Client Effect upon hit (needed)
		creo->playEffect("clienteffect/pl_force_armor_hit.cef", "");

		ManagedReference<PlayerObject*> playerObject = creo->getPlayerObject();
		if (playerObject == NULL)
			return;

		// TODO: Force Rank modifiers.
		float force_manipulation = 0.f;
		if (playerObject->getJediState() == 4) {
			force_manipulation = (float)creo->getSkillMod("force_manipulation_light") / 1000;
		} else if (playerObject->getJediState() == 8) {
			force_manipulation = (float)creo->getSkillMod("force_manipulation_dark") / 1000;
		}
		int forceCost = (param * 0.10) - (force_manipulation * (param * 0.10));
		StringBuffer forceCostInfo;
		forceCostInfo
		<< "Damage:"
		<< param
		<< " * 0.3) - (force_manipulation:"
		<< force_manipulation
		<< " * (Damage:"
		<< param
		<< " * 0.3) = "
		<< forceCost;
		//info(forceCostInfo);
		if (playerObject->getForcePower() <= forceCost) { // Remove buff if not enough force.
			Buff* buff = creo->getBuff(BuffCRC::JEDI_FORCE_ARMOR_2);
			if (buff != NULL) {
				Locker locker(buff);

				creo->removeBuff(buff);
			}
		} else
			playerObject->setForcePower(playerObject->getForcePower() - forceCost);
	}

};

#endif //FORCEARMOR2COMMAND_H_