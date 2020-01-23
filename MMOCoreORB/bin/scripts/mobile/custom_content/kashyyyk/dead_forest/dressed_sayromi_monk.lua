ep3_forest_sayormi_monk = Creature:new {
	customName = "a sayormi monk",
	socialGroup = "townsperson",
	faction = "townsperson",
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
		"object/mobile/dressed_sayromi_monk_01.iff",
		"object/mobile/dressed_sayromi_monk_02.iff",
		"object/mobile/dressed_sayromi_monk_03.iff",
		"object/mobile/dressed_sayromi_monk_04.iff",
		"object/mobile/dressed_sayromi_monk_05.iff",
		"object/mobile/dressed_sayromi_monk_06.iff"
	},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = merge(marksmannovice,brawlernovice)
}

CreatureTemplates:addCreatureTemplate(ep3_forest_sayormi_monk, "ep3_forest_sayormi_monk")
