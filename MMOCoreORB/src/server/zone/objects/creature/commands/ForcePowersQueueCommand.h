/*
 * ForcePowersQueueCommand.h
 *
 *  Created on: 24/05/2010
 *      Author: Valkyra
 */

#ifndef FORCEPOWERSQUEUECOMMAND_H_
#define FORCEPOWERSQUEUECOMMAND_H_

#include"server/zone/ZoneServer.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/managers/combat/CombatManager.h"
#include "server/zone/managers/combat/CreatureAttackData.h"
#include "server/zone/managers/collision/CollisionManager.h"
#include "CombatQueueCommand.h"
#include "server/zone/managers/visibility/VisibilityManager.h"

class ForcePowersQueueCommand : public CombatQueueCommand {
public:

	ForcePowersQueueCommand(const String& name, ZoneProcessServer* server) : CombatQueueCommand(name, server) {
		visMod = 25;
	}

	int doCombatAction(CreatureObject* creature, const uint64& target, const UnicodeString& arguments = "") const {
			ManagedReference<SceneObject*> targetObject = server->getZoneServer()->getObject(target);

			if (targetObject == NULL || !targetObject->isTangibleObject() || targetObject == creature)
				return INVALIDTARGET;

			float checkRange = range;
			//forceCost = 1;

			if (creature->isProne())
				return NOPRONE;

			if(!checkDistance(creature, targetObject, checkRange))
				return TOOFAR;

			if (!CollisionManager::checkLineOfSight(creature, targetObject)) {
				creature->sendSystemMessage("@cbt_spam:los_fail");// "You lost sight of your target."
				return GENERALERROR;
			}

			ManagedReference<PlayerObject*> playerObject = creature->getPlayerObject();
			int forceReduced = forceCost;
			if (playerObject != NULL) {
				int powSkills = playerObject->numSpecificSkills(creature, "force_discipline_powers_");
				float powMod = powSkills * 5;
				forceReduced = forceCost - powMod;
				if (forceReduced < 20) {
					forceReduced = 20;
				}
			}

			if (playerObject != NULL && playerObject->getForcePower() < forceReduced) {
				creature->sendSystemMessage("@jedi_spam:no_force_power"); //"You do not have enough Force Power to peform that action.

				return GENERALERROR;
			}

			CombatManager* combatManager = CombatManager::instance();

			try {
				int res = combatManager->doCombatAction(creature, creature->getWeapon(), cast<TangibleObject*>(targetObject.get()), CreatureAttackData(arguments, this, target));

				switch (res) {
				case -1:
					return INVALIDTARGET;
				case -3:
					return GENERALERROR;
				}
				
				if (playerObject != NULL)
					playerObject->setForcePower(playerObject->getForcePower() - forceReduced);

			} catch (Exception& e) {
				error("unreported exception caught in ForcePowersQueueCommand::doCombatAction");
				error(e.getMessage());
				e.printStackTrace();
			}

			// Increase Visibility for Force Power.
			VisibilityManager::instance()->increaseVisibility(creature, visMod);
			return SUCCESS;
		}

	float getCommandDuration(CreatureObject *object, const UnicodeString& arguments) const {
		return defaultTime * speed;
	}

	virtual bool isJediCombatQueueCommand() {
		return true;
	}

};

#endif /* FORCEPOWERSQUEUECOMMAND_H_ */
