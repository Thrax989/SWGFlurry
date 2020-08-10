/*
 * PerformanceBuffImplementation.cpp
 *
 *  Created on: 04/03/2011
 *      Author: Itac
 */

#include "server/zone/objects/creature/buffs/PerformanceBuff.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "templates/params/creature/CreatureAttribute.h"
#include "server/zone/objects/creature/buffs/PerformanceBuffType.h"

void PerformanceBuffImplementation::activate(bool applyModifiers) {

	if(type == PerformanceBuffType::DANCE_MIND) {
		int mindStrength = round(strength * (float)creature.get()->getBaseHAM(CreatureAttribute::MIND))+1000;
		setAttributeModifier(CreatureAttribute::MIND, mindStrength);
		creature.get()->sendSystemMessage("@healing:performance_enhance_dance_mind_d");

	}
	else if(type == PerformanceBuffType::MUSIC_FOCUS) {
		int focusStrength = round(strength * (float)creature.get()->getBaseHAM(CreatureAttribute::FOCUS))+750;
		setAttributeModifier(CreatureAttribute::FOCUS, focusStrength);
		creature.get()->sendSystemMessage("@healing:performance_enhance_music_focus_d");

	}
	else if(type == PerformanceBuffType::MUSIC_WILLPOWER) {
		int willStrength = round(strength * (float)creature.get()->getBaseHAM(CreatureAttribute::WILLPOWER))+750;
		setAttributeModifier(CreatureAttribute::WILLPOWER, willStrength);
		creature.get()->sendSystemMessage("@healing:performance_enhance_music_willpower_d");
	} // credits to: aotc for musician buffs to give accuracy 
	else if(type == PerformanceBuffType::STAT_RANGED_ACC) {
		setSkillModifier("ranged_accuracy", strength);
		creature.get()->sendSystemMessage("Applying Ranged Accuracy + " + String::valueOf(strength));10;
	}
	else if(type == PerformanceBuffType::STAT_MELEE_ACC) {
		setSkillModifier("melee_accuracy", strength);
		creature.get()->sendSystemMessage("Applying Melee Accuracy + " + String::valueOf(strength));10;
	}
	BuffImplementation::activate(true);

}

void PerformanceBuffImplementation::deactivate(bool removeModifiers) {
	BuffImplementation::deactivate(true);
}