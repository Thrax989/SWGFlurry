gr_tormented_bocatt = Creature:new {
	customName = "Tormented Bocatt",
	socialGroup = "bocatt",
	faction = "",
	level = 90,
	chanceHit = 1.32,
	damageMin = 340,
	damageMax = 500,
	baseXp = 1278,
	baseHAM = 15000,
	baseHAMmax = 21000,
	armor = 0,
	resists = {20,20,-1,-1,150,150,-1,-1,-1},
	--meatType = "",
	--meatAmount = ,
	hideType = "hide_leathery",
	hideAmount = 60,
	boneType = "bone_mammal",
	boneAmount = 35,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/bocatt_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/bocatt_hue.iff",
	scale = 1.1,
	lootGroups = {},
	weapons = {"creature_spit_small_yellow"},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(gr_tormented_bocatt, "gr_tormented_bocatt")
