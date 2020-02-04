minstyngar = Creature:new {
	customName = "a minstyngar",
	socialGroup = "a minstyngar",
	faction = "",
	level = 12,
	chanceHit = 0.24,
	damageMin = 40,
	damageMax = 45,
	baseXp = 3500,
	baseHAM = 12500,
	baseHAMmax = 18500,
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

	templates = {"object/mobile/minstyngar.iff"},
	controlDeviceTemplate = "object/intangible/pet/minstyngar.iff",
	lootGroups = {},
	weapons = {},

	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(minstyngar, "minstyngar")
