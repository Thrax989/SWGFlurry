me_desert_kreetle = Creature:new {
	objectName = "@mob/creature_names:me_desert_kreetle",
	socialGroup = "kreetle",
	faction = "",
	level = 7,
	chanceHit = 0.23,
	damageMin = 55,
	damageMax = 75,
	baseXp = 85,
	baseHAM = 100,
	baseHAMmax = 160,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "meat_insect",
	meatAmount = 6,
	hideType = "hide_scaley",
	hideAmount = 6,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 3,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/kreetle.iff"},
	controlDeviceTemplate = "object/intangible/pet/bark_mite_hue.iff",
	scale = 0.95,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(me_desert_kreetle, "me_desert_kreetle")
