darklighter_desert_demon_brawler = Creature:new {
	customName = "a Desert demon brawler",
	socialGroup = "desert_demon",
	faction = "desert_demon",
	level = 22,
	chanceHit = 0.34,
	damageMin = 200,
	damageMax = 210,
	baseXp = 2006,
	baseHAM = 6300,
	baseHAMmax = 7700,
	armor = 1,
	resists = {10,10,10,25,10,10,10,-1,-1},
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
				"object/mobile/dressed_criminal_swooper_human_female_01.iff",
				"object/mobile/dressed_criminal_swooper_human_male_01.iff",
				"object/mobile/dressed_criminal_swooper_zabrak_female_01.iff",
				"object/mobile/dressed_criminal_swooper_zabrak_male_01.iff"
				},
				
	lootGroups = {},
	weapons = {"pirate_weapons_medium"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(darklighter_desert_demon_brawler, "darklighter_desert_demon_brawler")
