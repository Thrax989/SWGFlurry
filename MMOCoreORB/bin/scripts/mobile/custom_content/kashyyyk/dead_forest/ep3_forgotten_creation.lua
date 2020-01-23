ep3_forgotten_creation = Creature:new {
	customName = "a forgotten creation",
	socialGroup = "thug",
	faction = "thug",
	level = 7,
	chanceHit = 0.46,
	damageMin = 65,
	damageMax = 80,
	baseXp = 250,
	baseHAM = 290,
	baseHAMmax = 390,
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
	pvpBitmask = NONE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/battle_droid.iff",
		"object/mobile/droideka.iff",
		"object/mobile/blastromech.iff",
		"object/mobile/le_repair_droid.iff",
		"object/mobile/dz70_fugitive_tracker_droid.iff"
		},
	lootGroups = {},
	weapons = {"battle_droid_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmannovice,brawlernovice)
}

CreatureTemplates:addCreatureTemplate(ep3_forgotten_creation, "ep3_forgotten_creation")
