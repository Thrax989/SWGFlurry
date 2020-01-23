ep3_wke_villager = Creature:new {
	customName = "a Wookiee villager",
	socialGroup = "wookie",
	faction = "",
	level = 30,
	chanceHit = 0.33,
	damageMin = 180,
	damageMax = 190,
	baseXp = 1609,
	baseHAM = 4500,
	baseHAMmax = 5500,
	armor = 0,
	resists = {10,10,10,10,10,10,10,-1,-1},
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
		"object/mobile/ep3/ep3_wke_civilian_01.iff",
		"object/mobile/ep3/ep3_wke_civilian_02.iff",
		"object/mobile/ep3/ep3_wke_civilian_03.iff",
		"object/mobile/ep3/ep3_wke_civilian_04.iff",
		"object/mobile/ep3/ep3_wke_civilian_05.iff",
		"object/mobile/ep3/ep3_wke_civilian_06.iff"
	},
	scale = 1.2,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(ep3_wke_villager, "ep3_wke_villager")

