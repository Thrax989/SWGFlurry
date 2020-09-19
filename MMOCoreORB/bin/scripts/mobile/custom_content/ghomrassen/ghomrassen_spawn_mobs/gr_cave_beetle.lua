gr_cave_beetle = Creature:new {
	customName = "Cave Beetle",
	socialGroup = "beetle",
	faction = "",
	level = 80,
	chanceHit = 0.98,
	damageMin = 350,
	damageMax = 450,
	baseXp = 856,
	baseHAM = 12000,
	baseHAMmax = 16000,
	armor = 0,
	resists = {25,25,25,25,25,25,25,25,-1},
	meatType = "meat_insect",
	meatAmount = 188,
	hideType = "hide_scaley",
	hideAmount = 188,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.0,
	ferocity = 1,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/rock_beetle.iff"},
	controlDeviceTemplate = "object/intangible/pet/rock_mite_hue.iff",
	scale = 1.4,
	lootGroups = {},
	weapons = {"creature_spit_small_yellow"},
	conversationTemplate = "",
	attacks = {
		{"mediumpoison",""},
		{"posturedownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(gr_cave_beetle, "gr_cave_beetle")
