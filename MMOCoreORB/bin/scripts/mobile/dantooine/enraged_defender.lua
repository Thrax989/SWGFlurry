enraged_defender = Creature:new {
	objectName = "@mob/creature_names:piket_enraged_defender",
	socialGroup = "piket",
	faction = "",
	level = 49,
	chanceHit = 0.47,
	damageMin = 385,
	damageMax = 480,
	baseXp = 4734,
	baseHAM = 11000,
	baseHAMmax = 11000,
	armor = 0,
	resists = {140,140,120,0,0,0,0,0,-1},
	meatType = "meat_herbivore",
	meatAmount = 500,
	hideType = "hide_scaley",
	hideAmount = 500,
	boneType = "bone_mammal",
	boneAmount = 500,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 9,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/piket_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/piket_hue.iff",
	scale = 1.2,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack",""},
		{"blindattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(enraged_defender, "enraged_defender")
