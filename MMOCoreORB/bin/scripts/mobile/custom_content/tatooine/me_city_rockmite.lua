me_city_rockmite = Creature:new {
	objectName = "@mob/creature_names:me_city_rockmite",
	socialGroup = "self",
	faction = "",
	level = 10,
	chanceHit = 0.28,
	damageMin = 100,
	damageMax = 130,
	baseXp = 356,
	baseHAM = 810,
	baseHAMmax = 990,
	armor = 0,
	resists = {5,5,5,5,5,5,5,-1,-1},
	meatType = "meat_insect",
	meatAmount = 9,
	hideType = "hide_scaley",
	hideAmount = 12,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 1,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/rock_mite.iff"},
	controlDeviceTemplate = "object/intangible/pet/rock_mite_hue.iff",
	scale = 0.7,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(me_city_rockmite, "me_city_rockmite")
