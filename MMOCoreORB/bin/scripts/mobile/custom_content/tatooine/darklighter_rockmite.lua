darklighter_rockmite = Creature:new {
	objectName = "@mob/creature_names:rockmite",
	socialGroup = "self",
	faction = "",
	level = 25,
	chanceHit = 0.36,
	damageMin = 280,
	damageMax = 290,
	baseXp = 2637,
	baseHAM = 5900,
	baseHAMmax = 7200,
	armor = 1,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "meat_insect",
	meatAmount = 35,
	hideType = "hide_scaley",
	hideAmount = 35,
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
	scale = 1.8,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(darklighter_rockmite, "darklighter_rockmite")
