blackguard_mouse_droid = Creature:new {
	--objectName = "",
	customName = "a Mouse Droid",
	socialGroup = "mercenary",
	pvpFaction = "",
	faction = "",
	level = 1,
	chanceHit = 0.27,
	damageMin = 0,
	damageMax = 0,
	baseXp = 2637,
	baseHAM = 100,
	baseHAMmax = 900,
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
	pvpBitmask = ATTACKABLE,
	creatureBitmask = NONE,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {
		"object/mobile/mouse_droid.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	reactionStf = "",
	attacks = brawlermaster
}

CreatureTemplates:addCreatureTemplate(blackguard_mouse_droid, "blackguard_mouse_droid")
