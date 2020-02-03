urnsoris = Creature:new {
	customName = "an urnsoris",
	socialGroup = "townsperson",
	faction = "",
	level = 24,
	chanceHit = 0.34,
	damageMin = 175,
	damageMax = 450,
	baseXp = 3500,
	baseHAM = 16300,
	baseHAMmax = 19800,
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

	templates = {"object/mobile/urnsoris.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(urnsoris, "urnsoris")
