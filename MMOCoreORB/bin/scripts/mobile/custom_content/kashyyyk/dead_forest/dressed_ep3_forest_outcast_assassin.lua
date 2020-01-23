dressed_ep3_forest_outcast_assassin = Creature:new {
	customName = "a Forest Outcast assissin",
	socialGroup = "webweaver",
	level = 40,
	chanceHit = 0.42,
	damageMin = 360,
	damageMax = 430,
	baseXp = 3915,
	baseHAM = 9000,
	baseHAMmax = 11000,
	armor = 0,
	resists = {25,60,25,-1,-1,60,50,-1,-1},
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
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_ep3_forest_outcast_assassin_01.iff",
		"object/mobile/dressed_ep3_forest_outcast_assassin_02.iff"
		},
	lootGroups = {},
	weapons = {"pirate_weapons_light"},
	conversationTemplate = {},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(dressed_ep3_forest_outcast_assassin, "dressed_ep3_forest_outcast_assassin")
