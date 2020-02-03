katarn = Creature:new {
	customName = "a katarn",
	socialGroup = "katarn",
	faction = "",
	level = 125,
	chanceHit = 0.74,
	damageMin = 880,
	damageMax = 1450,
	baseXp = 5500,
	baseHAM = 85500,
	baseHAMmax = 105500,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milkType = "",
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,


	templates = {"object/mobile/katarn.iff"},
	lootGroups = {},
	weapons = {},
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(katarn, "katarn")
