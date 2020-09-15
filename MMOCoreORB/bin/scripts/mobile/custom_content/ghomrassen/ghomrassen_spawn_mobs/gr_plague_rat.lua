gr_plague_rat = Creature:new {
	customName = "Plagued Rat",
	socialGroup = "rat",
	faction = "",
	level = 80,
	chanceHit = 0.98,
	damageMin = 350,
	damageMax = 450,
	baseXp = 856,
	baseHAM = 12000,
	baseHAMmax = 16000,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "meat_wild",
	meatAmount = 165,
	hideType = "hide_leathery",
	hideAmount = 165,
	boneType = "bone_mammal",
	boneAmount = 165,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/womp_rat.iff"},
	--controlDeviceTemplate = "object/intangible/pet/womp_rat_hue.iff",
	scale = 1.3,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack",""},
		{"milddisease",""}
	}
}

CreatureTemplates:addCreatureTemplate(gr_plague_rat, "gr_plague_rat")
