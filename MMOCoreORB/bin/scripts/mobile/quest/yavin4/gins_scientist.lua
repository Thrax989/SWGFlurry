gins_scientist = Creature:new {
	objectName = "@mob/creature_names:thug",
	socialGroup = "rebel",
	faction = "rebel",
	level = 15,
	chanceHit = 0.26,
	damageMin = 85,
	damageMax = 105,
	baseXp = 207,
	baseHAM = 500,
	baseHAMmax = 550,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + ENEMY + AGGRESSIVE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = { "object/mobile/dressed_combatmedic_trainer_human_male_01.iff",
			"object/mobile/dressed_brigade_captain_human_male_01.iff",
			"object/mobile/dressed_hutt_medic2_twilek_male_01.iff",
			"object/mobile/dressed_combatmedic_trainer_human_female_01.iff",
			"object/mobile/dressed_doctor_trainer_moncal_male_01.iff",
			"object/mobile/dressed_combatmedic_trainer_rodian_male_01.iff",
			"object/mobile/dressed_mercenary_medic_rodian_female_01.iff" },
	lootGroups = {
		{
	        	groups = {
				{group = "junk", chance = 7000000},
				{group = "loot_kit_parts", chance = 2000000},
				{group = "tailor_components", chance = 1000000}
			}
		}
	},
	weapons = {"pirate_weapons_light"},
	conversationTemplate = "",
	attacks = merge(marksmanmid,brawlermid)
}

CreatureTemplates:addCreatureTemplate(gins_scientist, "gins_scientist")
