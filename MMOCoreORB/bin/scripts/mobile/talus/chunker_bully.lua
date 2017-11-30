chunker_bully = Creature:new {
	objectName = "@mob/creature_names:chunker_bully",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "chunker",
	faction = "thug",
	level = 10,
	chanceHit = 0.280000,
	damageMin = 90,
	damageMax = 110,
	baseXp = 356,
	baseHAM = 810,
	baseHAMmax = 990,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.000000,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + STALKER,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_mugger.iff",
		"object/mobile/dressed_robber_human_male_01.iff",
		"object/mobile/dressed_criminal_thug_zabrak_female_01.iff",
		"object/mobile/dressed_criminal_thug_aqualish_female_02.iff",
		"object/mobile/dressed_criminal_thug_aqualish_male_02.iff",
		"object/mobile/dressed_desperado_bith_female_01.iff",
		"object/mobile/dressed_criminal_thug_human_female_01.iff",
		"object/mobile/dressed_goon_twk_female_01.iff",
		"object/mobile/dressed_criminal_thug_human_male_01.iff",
		"object/mobile/dressed_robber_twk_female_01.iff",
		"object/mobile/dressed_villain_trandoshan_male_01.iff",
		"object/mobile/dressed_desperado_bith_male_01.iff",
		"object/mobile/dressed_mugger.iff"},

--NPC Faction Template Chunker
lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000}				
		},
			lootChance = 100000
		},
		{
			groups = {
				{group = "artifact", chance = 10000000}			
		},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "tierone", chance = 10000000}
		},
			lootChance = 750000
		},
		{
			groups = {
				{group = "tiertwo", chance = 10000000}
		},
			lootChance = 100000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}
		},
			lootChance = 50000
		},
		{
			groups = {
				{group = "chunker_common", chance = 10000000}
		},
			lootChance = 1000000
		},
	},
	weapons = {"ranged_weapons"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(marksmannovice,brawlernovice)
}

CreatureTemplates:addCreatureTemplate(chunker_bully, "chunker_bully")
