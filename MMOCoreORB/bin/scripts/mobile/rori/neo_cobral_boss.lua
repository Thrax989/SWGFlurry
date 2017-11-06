neo_cobral_boss = Creature:new {
	objectName = "@mob/creature_names:cobral_boss",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "cobral",
	faction = "cobral",
	level = 30,
	chanceHit = 0.38,
	damageMin = 280,
	damageMax = 290,
	baseXp = 3097,
	baseHAM = 8300,
	baseHAMmax = 10100,
	armor = 0,
	resists = {0,0,0,40,40,40,40,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	templates = {
		"object/mobile/dressed_cobral_boss_twk_female_01.iff",
		"object/mobile/dressed_cobral_boss_twk_male_01.iff"},


--NPC with Lootkit Template
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
		{
			groups = {
				{group = "loot_kit_parts", chance = 10000000}
		},
			lootChance = 150000
		},
	},
	weapons = {"pirate_weapons_medium"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(neo_cobral_boss, "neo_cobral_boss")
