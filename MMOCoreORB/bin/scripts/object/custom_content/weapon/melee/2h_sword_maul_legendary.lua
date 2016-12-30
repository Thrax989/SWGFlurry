object_weapon_melee_2h_sword_2h_sword_maul_legendary = object_weapon_melee_2h_sword_shared_2h_sword_maul_legendary:new {

	playerRaces = { "object/creature/player/bothan_male.iff",
				"object/creature/player/smc_female.iff",
				"object/creature/player/smc_male.iff",
				"object/creature/player/talz_male.iff",
				"object/creature/player/talz_female.iff",
				"object/creature/player/togruta_female.iff",
				"object/creature/player/togruta_male.iff",
				"object/creature/player/weequay_male.iff",
				"object/creature/player/weequay_female.iff",
				"object/creature/player/nautolan_male.iff",
				"object/creature/player/nautolan_female.iff",
				"object/creature/player/nightsister_female.iff",
				"object/creature/player/nightsister_male.iff",
				"object/creature/player/nikto_male.iff",
				"object/creature/player/nikto_female.iff",
				"object/creature/player/quarren_male.iff",
				"object/creature/player/quarren_female.iff",
				"object/creature/player/ishi_tib_male.iff",
				"object/creature/player/ishi_tib_female.iff",
				"object/creature/player/hutt_female.iff",
				"object/creature/player/hutt_male.iff",
				"object/creature/player/gran_male.iff",
				"object/creature/player/gran_female.iff",
				"object/creature/player/gotal_male.iff",
				"object/creature/player/gotal_female.iff",
				"object/creature/player/aqualish_female.iff",
				"object/creature/player/aqualish_male.iff",
				"object/creature/player/bith_female.iff",
				"object/creature/player/bith_male.iff",
				"object/creature/player/chiss_female.iff",
				"object/creature/player/chiss_male.iff",
				"object/creature/player/devaronian_male.iff",
				"object/creature/player/devaronian_female.iff",
				"object/creature/player/bothan_female.iff",
				"object/creature/player/bothan_male.iff",
				"object/creature/player/human_male.iff",
				"object/creature/player/human_female.iff",
				"object/creature/player/ithorian_male.iff",
				"object/creature/player/ithorian_female.iff",
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
				"object/creature/player/wookiee_male.iff",
				"object/creature/player/wookiee_female.iff",
				"object/creature/player/zabrak_male.iff",
				"object/creature/player/zabrak_female.iff" },

	-- RANGEDATTACK, MELEEATTACK, FORCEATTACK, TRAPATTACK, GRENADEATTACK, HEAVYACIDBEAMATTACK,
	-- HEAVYLIGHTNINGBEAMATTACK, HEAVYPARTICLEBEAMATTACK, HEAVYROCKETLAUNCHERATTACK, HEAVYLAUNCHERATTACK
	attackType = MELEEATTACK,

	-- ENERGY, KINETIC, ELECTRICITY, STUN, BLAST, HEAT, COLD, ACID, FORCE, LIGHTSABER
	damageType = BLAST,

	-- NONE, LIGHT, MEDIUM, HEAVY
	armorPiercing = HEAVY,

	-- combat_rangedspecialize_bactarifle, combat_rangedspecialize_rifle, combat_rangedspecialize_pistol, combat_rangedspecialize_heavy, combat_rangedspecialize_carbine
	-- combat_meleespecialize_unarmed, combat_meleespecialize_twohand, combat_meleespecialize_polearm, combat_meleespecialize_onehand, combat_general,
	-- combat_meleespecialize_twohandlightsaber, combat_meleespecialize_polearmlightsaber, combat_meleespecialize_onehandlightsaber
	xpType = "combat_meleespecialize_twohand",

	-- See http://www.ocdsoft.com/files/certifications.xls
	certificationsRequired = { "cert_sword_2h_axe" },
	-- See http://www.ocdsoft.com/files/accuracy.xls
	creatureAccuracyModifiers = { "twohandmelee_accuracy" },

	-- See http://www.ocdsoft.com/files/defense.xls
	defenderDefenseModifiers = { "melee_defense" },

	-- Leave as "dodge" for now, may have additions later
	defenderSecondaryDefenseModifiers = { "counterattack" },

	defenderToughnessModifiers = { "twohandmelee_toughness" },

	-- See http://www.ocdsoft.com/files/speed.xls
	speedModifiers = { "twohandmelee_speed" },

	-- Leave blank for now
	damageModifiers = { },


	-- The values below are the default values.  To be used for blue frog objects primarily
	healthAttackCost = 135,
	actionAttackCost = 65,
	mindAttackCost = 50,
	forceCost = 0,

	pointBlankRange = 0,
	pointBlankAccuracy = -35,

	idealRange = 3,
	idealAccuracy = -35,

	maxRange = 5,
	maxRangeAccuracy = -35,

	minDamage = 200,
	maxDamage = 550,

	attackSpeed = 5,

	woundsRatio = 25,

	numberExperimentalProperties = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
	experimentalProperties = {"XX", "XX", "SR", "SR", "SR", "SR", "SR", "SR", "SR", "XX", "SR", "XX", "SR", "SR", "SR"},
	experimentalWeights = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
	experimentalGroupTitles = {"null", "null", "expDamage", "expDamage", "expDamage", "expDamage", "exp_durability", "expRange", "expRange", "null", "expRange", "null", "expEffeciency", "expEffeciency", "expEffeciency"},
	experimentalSubGroupTitles = {"null", "null", "mindamage", "maxdamage", "attackspeed", "woundchance", "hitpoints", "zerorangemod", "maxrangemod", "midrange", "midrangemod", "maxrange", "attackhealthcost", "attackactioncost", "attackmindcost"},
	experimentalMin = {0, 0, 153, 335, 8.5, 21, 1750, -46, -46, 3, -46, 4, 160, 70, 56},
	experimentalMax = {0, 0, 198, 536, 5.8, 30, 2500, -25, -25, 3, -25, 4, 103, 55, 47},
	experimentalPrecision = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	experimentalCombineType = {0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
}

ObjectTemplates:addTemplate(object_weapon_melee_2h_sword_2h_sword_maul_legendary, "object/weapon/melee/2h_sword/2h_sword_maul_legendary.iff")
