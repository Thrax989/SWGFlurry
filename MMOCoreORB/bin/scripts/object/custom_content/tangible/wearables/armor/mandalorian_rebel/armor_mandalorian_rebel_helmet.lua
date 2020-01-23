
object_tangible_wearables_armor_mandalorian_rebel_armor_mandalorian_rebel_helmet = object_tangible_wearables_armor_mandalorian_rebel_shared_armor_mandalorian_rebel_helmet:new {

	templateType = ARMOROBJECT,
	objectMenuComponent = "ArmorObjectMenuComponent",
	faction = "Rebel",
	--noTrade = 1,
	playerRaces = { 	"object/creature/player/smc_female.iff",
				"object/creature/player/smc_male.iff",
				"object/creature/player/nightsister_female.iff",
				"object/creature/player/nightsister_male.iff",
				"object/creature/player/nikto_male.iff",
				"object/creature/player/nikto_female.iff",
				"object/creature/player/aqualish_female.iff",
				"object/creature/player/aqualish_male.iff",
				"object/creature/player/bith_female.iff",
				"object/creature/player/bith_male.iff",
				"object/creature/player/chiss_female.iff",
				"object/creature/player/chiss_male.iff",
				"object/creature/player/bothan_female.iff",
				"object/creature/player/bothan_male.iff",
				"object/creature/player/human_male.iff",
				"object/creature/player/human_female.iff",
				"object/creature/player/moncal_male.iff",
				"object/creature/player/moncal_female.iff",
				"object/creature/player/rodian_male.iff",
				"object/creature/player/rodian_female.iff",
				"object/creature/player/sullustan_male.iff",
				"object/creature/player/sullustan_female.iff",
				"object/creature/player/trandoshan_male.iff",
				"object/creature/player/trandoshan_female.iff",
				"object/creature/player/twilek_male.iff",
				"object/creature/player/twilek_female.iff",
				"object/creature/player/zabrak_male.iff",
				"object/creature/player/zabrak_female.iff" },
	
	-- The damage types in WeaponObject
	vulnerability = LIGHTSABER,

	-- These are default Blue Frog stats
	healthEncumbrance = 15,
	actionEncumbrance = 15,
	mindEncumbrance = 15,
	
	maxCondition = 30000,

	-- LIGHT, MEDIUM, HEAVY
	rating = LIGHT,

	kinetic = 52,
	energy = 52,
	electricity = 62,
	stun = 25,
	blast = 62,
	heat = 73,
	cold = 62,
	acid = 62,
	lightSaber = 0,
	
	skillMods = {
        {"slope_move", 2},
        {"dizzy_defense", 2},
        {"melee_defense", 2},
        {"ranged_defense", 2}
    }
}

ObjectTemplates:addTemplate(object_tangible_wearables_armor_mandalorian_rebel_armor_mandalorian_rebel_helmet, "object/tangible/wearables/armor/mandalorian_rebel/armor_mandalorian_rebel_helmet.iff")
