/*
Copyright (C) 2007 <SWGEmu>

This File is part of Core3.

This program is free software; you can redistribute
it and/or modify it under the terms of the GNU Lesser
General Public License as published by the Free Software
Foundation; either version 2 of the License,
or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
See the GNU Lesser General Public License for
more details.

You should have received a copy of the GNU Lesser General
Public License along with this program; if not, write to
the Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA

Linking Engine3 statically or dynamically with other modules
is making a combined work based on Engine3.
Thus, the terms and conditions of the GNU Lesser General Public License
cover the whole combination.

In addition, as a special exception, the copyright holders of Engine3
give you permission to combine Engine3 program with free software
programs or libraries that are released under the GNU LGPL and with
code included in the standard release of Core3 under the GNU LGPL
license (or modified versions of such code, with unchanged license).
You may copy and distribute such a system following the terms of the
GNU LGPL for Engine3 and the licenses of the other code concerned,
provided that you include the source code of that other code when
and as the GNU LGPL requires distribution of source code.

Note that people who make modified versions of Engine3 are not obligated
to grant this special exception for their modified versions;
it is their choice whether to do so. The GNU Lesser General Public License
gives permission to release a modified version without this exception;
this exception also makes it possible to release a modified version
which carries forward this exception.
*/

#ifndef BHShieldCOMMAND_H_
#define BHShieldCOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/managers/combat/CombatManager.h"
#include "CombatQueueCommand.h"
#include "server/zone/objects/creature/buffs/Buff.h"
#include "server/zone/objects/creature/buffs/DelayedBuff.h"
#include "server/zone/packets/object/CombatAction.h"
#include "server/zone/objects/player/FactionStatus.h"
#include "server/zone/objects/creature/buffs/SingleUseBuff.h"
#include "server/zone/objects/creature/events/ShieldsAnimationTask.h"

class BhShieldCommand : public CombatQueueCommand {
public:

	BhShieldCommand(const String& name, ZoneProcessServer* server)
		: CombatQueueCommand(name, server) {
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;
					
		// Action cost of skill.
		int actionCost = 650;

		if (creature->getHAM(CreatureAttribute::ACTION) < actionCost) {
			creature->sendSystemMessage("not_enough_action"); //You do not have enough action to do that.
			return false;
		}
		
		//unsigned int buffCRC = STRING_HASHCODE("STASIS_SELF_DURATION");
		uint32 buffCRC = BuffCRC::JEDI_FORCE_ARMOR_2; //DURATION
		unsigned int buffCRC2 = STRING_HASHCODE("STASIS_SELF_COOLDOWN");

		int modSkill = (creature->getSkillMod("shieldduration"));
		
		int duration = 30 + modSkill;
		int loopCount = ((duration/9)-1);
		
		int cooldown = 180;
		//ManagedReference<Buff*> buff = new Buff(creature, buffCRC, duration, BuffType::OTHER);
		ManagedReference<SingleUseBuff*> buff = new SingleUseBuff(creature, buffCRC, duration, BuffType::JEDI, getNameCRC());
		ManagedReference<Buff*> buff2 = new Buff(creature, buffCRC2, cooldown, BuffType::OTHER);

		if (creature->hasBuff(buffCRC2)) {
			creature->sendSystemMessage("You cannot Shields at this time!");
		}
		else if (!creature->hasBuff(buffCRC2)) {
			Locker locker(buff);
			Locker locker2(buff2);
			creature->sendSystemMessage("You apply a shield around yourself!");
			buff->setSkillModifier("force_armor", 60);
			//buff->setSpeedMultiplierMod(0.01f);
			creature->addBuff(buff);
			creature->addBuff(buff2);
			creature->inflictDamage(creature, CreatureAttribute::ACTION, actionCost, false);
			
			creature->playEffect("clienteffect/bh_shields_effect.cef", "");
			
			Reference<Task*> shieldsAnimationTask = new ShieldsAnimationTask(creature, loopCount); //crc,
			creature->addPendingTask("shields_animation", shieldsAnimationTask, 9000);
			
			}else {
				creature->sendSystemMessage("You are already protected by a Shield.");
			}

		return SUCCESS;
	}

};

#endif
