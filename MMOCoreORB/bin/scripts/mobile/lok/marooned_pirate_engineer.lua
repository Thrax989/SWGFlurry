marooned_pirate_engineer = Creature:new {
	objectName = "@mob/creature_names:marooned_pirate_engineer",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "pirate",
	faction = "pirate",
	level = 19,
	chanceHit = 0.32,
	damageMin = 170,
	damageMax = 180,
	baseXp = 1609,
	baseHAM = 4100,
	baseHAMmax = 5000,
	armor = 0,
	resists = {5,20,5,40,-1,40,-1,-1,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_marooned_pirate_engr_bith_m.iff",
		"object/mobile/dressed_marooned_pirate_engr_hum_f.iff",
		"object/mobile/dressed_marooned_pirate_engr_hum_m.iff",
		"object/mobile/dressed_marooned_pirate_engr_sull_m.iff",
		"object/mobile/dressed_marooned_pirate_engr1_bith_m.iff",
		"object/mobile/dressed_marooned_pirate_engr1_hum_f.iff",
		"object/mobile/dressed_marooned_pirate_engr1_hum_m.iff",
		"object/mobile/dressed_marooned_pirate_engr1_sull_m.iff"},

	--NPC with AA/CA Template Generic
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000},
		},
			lootChance = 500000 

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
		
	},
	weapons = {"pirate_weapons_medium"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(marooned_pirate_engineer, "marooned_pirate_engineer")
