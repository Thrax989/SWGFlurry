darklighter_desert_demon_bodyguard = Creature:new {
	customName = "a Desert demon bodyguard",
	socialGroup = "desert_demon",
	faction = "desert_demon",
	level = 19,
	chanceHit = 0.33,
	damageMin = 180,
	damageMax = 190,
	baseXp = 1426,
	baseHAM = 4500,
	baseHAMmax = 5500,
	armor = 1,
	resists = {0,0,0,25,-1,-1,-1,-1,-1},
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

CreatureTemplates:addCreatureTemplate(darklighter_desert_demon_bodyguard, "darklighter_desert_demon_bodyguard")
