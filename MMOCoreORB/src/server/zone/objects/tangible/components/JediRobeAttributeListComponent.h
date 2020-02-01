
#ifndef JEDIROBEATTIBUTELISTCOMPONENT_H_
#define JEDIROBEATTIBUTELISTCOMPONENT_H_

#include "server/zone/objects/tangible/wearables/RobeObject.h"
#include "server/zone/objects/scene/components/AttributeListComponent.h"

class JediRobeAttributeListComponent: public AttributeListComponent {
public:

	/**
	 * Fills the Attributes
	 * @pre { this object is locked }
	 * @post { this object is locked, menuResponse is complete}
	 * @param menuResponse ObjectMenuResponse that will be sent to the client
	 */
	void fillAttributeList(AttributeListMessage* alm, CreatureObject* creature, SceneObject* object) const {

		ManagedReference<RobeObject*> robe = cast<RobeObject*> (object);
		if (robe == nullptr) {
			return;
		}

		const auto skills = robe->getTemplateSkillMods();

		if (skills->contains("jedi_force_power_max")) {
			int mod = skills->get("jedi_force_power_max");
			alm->insertAttribute("jedi_robe_power", "+" + String::valueOf(mod));
		}

		if (skills->contains("jedi_force_power_regen")) {
			int mod = skills->get("jedi_force_power_regen");
			alm->insertAttribute("jedi_robe_regen", "+" + String::valueOf(mod));
		}

		if (skills->contains("saber_block")) {
			int mod = skills->get("saber_block");
			alm->insertAttribute("saber_block", "+" + String::valueOf(mod));
		}

		if (skills->contains("jedi_toughness")) {
			int mod = skills->get("jedi_toughness");
			alm->insertAttribute("jedi_toughness", "+" + String::valueOf(mod));
		}

		if (skills->contains("forcelightning_accuracy")) {
			int mod = skills->get("forcelightning_accuracy");
			alm->insertAttribute("forcelightning_accuracy", "+" + String::valueOf(mod));
		}

		if (skills->contains("jedi_state_defense")) {
			int mod = skills->get("jedi_state_defense");
			alm->insertAttribute("jedi_state_defense", "+" + String::valueOf(mod));
		}

		if (skills->contains("melee_defense")) {
			int mod = skills->get("melee_defense");
			alm->insertAttribute("melee_defense", "+" + String::valueOf(mod));
		}

		if (skills->contains("ranged_defense")) {
			int mod = skills->get("ranged_defense");
			alm->insertAttribute("ranged_defense", "+" + String::valueOf(mod));
		}

		if (skills->contains("force_absorb")) {
			int mod = skills->get("force_absorb");
			alm->insertAttribute("force_absorb", "+" + String::valueOf(mod));
		}

		if (skills->contains("combat_equillibrium")) {
			int mod = skills->get("combat_equillibrium");
			alm->insertAttribute("combat_equillibrium", "+" + String::valueOf(mod));
		}

		String rankRequired = robe->getSkillRequired();

		if (!rankRequired.isEmpty() && rankRequired != "force_title_jedi_rank_02") {
			alm->insertAttribute("jedi_rank_required", "@skl_n:" + rankRequired);
		}
	}

};

#endif /* JEDIROBEATTIBUTELISTCOMPONENT_H_ */
