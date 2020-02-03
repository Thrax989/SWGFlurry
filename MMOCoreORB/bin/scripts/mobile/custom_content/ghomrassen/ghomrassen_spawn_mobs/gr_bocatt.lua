gr_bocatt = Creature:new {
	customName = "Bocatt",
	socialGroup = "bocatt",
	faction = "",
	level = 80,
	chanceHit = 3.32,
	damageMin = 160,
	damageMax = 170,
	baseXp = 1278,
	baseHAM = 15000,
	baseHAMmax = 21000,
	armor = 0,
	resists = {5,5,5,140,-1,-1,-1,-1,-1},
	meatType = "meat_reptilian",
	meatAmount = 100,
	hideType = "hide_leathery",
	hideAmount = 60,
	boneType = "bone_mammal",
	boneAmount = 35,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 7,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/bocatt.iff"},
	--controlDeviceTemplate = "object/intangible/pet/bocatt_hue.iff",
	lootGroups = {},
	weapons = {"creature_spit_small_yellow"},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(gr_bocatt, "gr_bocatt")
