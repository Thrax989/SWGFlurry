kashyyyk_bantha = Creature:new {
	customName = "a Kashyyyk bantha",
	socialGroup = "",
	faction = "",
	level = 12,
	chanceHit = 0.4,
	damageMin = 275,
	damageMax = 385,
	baseXp = 1500,
	baseHAM = 11300,
	baseHAMmax = 11800,
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

	templates = {"object/mobile/kashyyyk_bantha.iff"},
	controlDeviceTemplate = "object/intangible/pet/kashyyyk_bantha.iff",
	scale = 1,
	lootGroups = {},
	weapons = {},
	attacks = {
		{"",""},
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(kashyyyk_bantha, "kashyyyk_bantha")
