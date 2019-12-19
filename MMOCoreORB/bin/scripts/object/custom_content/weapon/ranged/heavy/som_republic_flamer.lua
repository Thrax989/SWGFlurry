object_weapon_ranged_heavy_som_republic_flamer = object_weapon_ranged_heavy_shared_som_republic_flamer:new {
	
	playerRaces = { "object/creature/player/bothan_male.iff",
				"object/creature/player/bothan_female.iff",
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
	attackType = RANGEDATTACK,
	weaponType = SPECIALHEAVYWEAPON,

	-- ENERGY, KINETIC, ELECTRICITY, STUN, BLAST, HEAT, COLD, ACID, LIGHTSABER
	damageType = HEAT,

	-- NONE, LIGHT, MEDIUM, HEAVY
	armorPiercing = NONE,

	-- combat_rangedspecialize_bactarifle, combat_rangedspecialize_rifle, combat_rangedspecialize_pistol, combat_rangedspecialize_heavy, combat_rangedspecialize_carbine
	-- combat_meleespecialize_unarmed, combat_meleespecialize_twohand, combat_meleespecialize_polearm, combat_meleespecialize_onehand, combat_general,
	-- combat_meleespecialize_twohandlightsaber, combat_meleespecialize_polearmlightsaber, combat_meleespecialize_onehandlightsaber
	xpType = "combat_rangedspecialize_heavy",

	-- See http://www.ocdsoft.com/files/certifications.xls
	certificationsRequired = { "cert_rifle_flame_thrower" },
	-- See http://www.ocdsoft.com/files/accuracy.xls
	creatureAccuracyModifiers = { "heavy_flame_thrower_accuracy" },

	-- See http://www.ocdsoft.com/files/defense.xls
	defenderDefenseModifiers = { "ranged_defense" },

	-- Leave as "dodge" for now, may have additions later
	defenderSecondaryDefenseModifiers = { "block" },

	-- See http://www.ocdsoft.com/files/speed.xls
	speedModifiers = { "heavy_flame_thrower_speed" },

	-- Leave blank for now
	damageModifiers = {  },


	-- The values below are the default values.  To be used for blue frog objects primarily
	healthAttackCost = 84,
	actionAttackCost = 20,
	mindAttackCost = 20,
	forceCost = 0,

	pointBlankAccuracy = 15,
	pointBlankRange = 0,

	idealRange = 50,
	idealAccuracy = -50,

	maxRange = 64,
	maxRangeAccuracy = 0,

	minDamage = 480,
	maxDamage = 830,

	attackSpeed = 6,

	woundsRatio = 12,

	numberExperimentalProperties = {1, 1, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2},
	experimentalProperties = {"XX", "XX", "OQ", "SR", "OQ", "SR", "OQ", "SR", "OQ", "SR", "OQ", "SR", "OQ", "SR", "OQ", "SR", "XX", "OQ", "SR", "OQ", "SR", "OQ", "SR", "OQ", "SR",},
	experimentalWeights = {1, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 1, 2, 1, 2, 1, 2, 1, 2, 1},
	experimentalGroupTitles = {"null", "null", "expDamage", "expDamage", "expDamage", "expDamage", "expEffeciency", "exp_durability", "expRange", "null", "expRange", "expEffeciency", "expEffeciency", "expEffeciency"},
	experimentalSubGroupTitles = {"null", "null", "mindamage", "maxdamage", "attackspeed", "woundchance", "roundsused", "hitpoints", "zerorangemod", "midrange", "midrangemod", "attackhealthcost", "attackactioncost", "attackmindcost"},
	experimentalMin = {0, 0, 240, 690, 7.2, 8, 30, 750, 10, 50, -65, 84, 20, 20},
	experimentalMax = {0, 0, 476, 826, 4.9, 16, 65, 1500, 20, 50, -35, 45, 10, 10},
	experimentalPrecision = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	experimentalCombineType = {0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
}

ObjectTemplates:addTemplate(object_weapon_ranged_heavy_som_republic_flamer, "object/weapon/ranged/heavy/som_republic_flamer.iff")
