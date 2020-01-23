me_carrion_kreetle = Creature:new {
	objectName = "@mob/creature_names:me_carrion_kreetle",
	socialGroup = "kreetle",
	faction = "",
	level = 10,
	chanceHit = 0.23,
	damageMin = 55,
	damageMax = 65,
	baseXp = 65,
	baseHAM = 100,
	baseHAMmax = 140,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "meat_insect",
	meatAmount = 5,
	hideType = "hide_scaley",
	hideAmount = 5,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 3,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/kreetle.iff"},
	controlDeviceTemplate = "object/intangible/pet/bark_mite_hue.iff",
	scale = 0.85,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(me_carrion_kreetle, "me_carrion_kreetle")
