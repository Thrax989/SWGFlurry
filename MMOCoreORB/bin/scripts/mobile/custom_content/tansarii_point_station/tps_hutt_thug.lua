tps_hutt_thug = Creature:new {
	customName = "a Hutt thug",
	randomNameTag = false,
	socialGroup = "jabba",
	faction = "jabba",
	level = 10,
	chanceHit = 0.25,
	damageMin = 45,
	damageMax = 50,
	baseXp = 85,
	baseHAM = 135,
	baseHAMmax = 165,
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
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
				"object/mobile/dressed_criminal_assassin_human_female_01.iff",--Add mote of these templates
				"object/mobile/dressed_criminal_assassin_human_male_01.iff",
				"object/mobile/dressed_criminal_pirate_human_female_01.iff",
				"object/mobile/dressed_criminal_pirate_human_male_01.iff",
				"object/mobile/dressed_criminal_thug_aqualish_female_02.iff",
				"object/mobile/dressed_criminal_thug_aqualish_male_02.iff",
				"object/mobile/dressed_criminal_thug_trandoshan_female_01.iff",
				"object/mobile/dressed_criminal_thug_trandoshan_male_01.iff",
				"object/mobile/dressed_crook_zabrak_female_01.iff",
				"object/mobile/dressed_crook_zabrak_male_01.iff",
				"object/mobile/dressed_desperado_bith_female_01.iff",
				"object/mobile/dressed_desperado_bith_male_01.iff",
				"object/mobile/dressed_mercenary_elite_nikto_m.iff",
				"object/mobile/dressed_mercenary_elite_rod_m.iff",
				"object/mobile/dressed_mercenary_elite_wee_m.iff",
				},
				
	lootGroups = {
					{
						groups = {
								{group = "junk", chance = 2000000},
								{group = "wearables_common", chance = 2000000},
								{group = "weapons_all", chance = 2000000},
								{group = "tailor_components", chance = 1500000},
								{group = "loot_kit_parts", chance = 1500000},
								{group = "printer_parts", chance = 1000000},
								},
								lootChance = 10000000
					}
	},
	weapons = {},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(tps_hutt_thug, "tps_hutt_thug")