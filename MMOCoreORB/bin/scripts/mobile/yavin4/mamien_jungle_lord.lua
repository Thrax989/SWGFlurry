mamien_jungle_lord = Creature:new {
	objectName = "@mob/creature_names:mamien_junglelord",
	socialGroup = "mamien",
	faction = "",
	level = 60,
	chanceHit = 0.55,
	damageMin = 470,
	damageMax = 650,
	baseXp = 5830,
	baseHAM = 11000,
	baseHAMmax = 14000,
  armor = 3,
	resists = {160,160,160,130,150,130,130,140,140},
	meatType = "meat_wild",
	meatAmount = 36,
	hideType = "hide_wooly",
	hideAmount = 360,
	boneType = "bone_mammal",
	boneAmount = 36,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/mamien_hue.iff"},
	hues = { 24, 25, 26, 27, 28, 29, 30, 31 },
	controlDeviceTemplate = "object/intangible/pet/mamien_hue.iff",
	scale = 1.25,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack","stateAccuracyBonus=100"},
		{"dizzyattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(mamien_jungle_lord, "mamien_jungle_lord")
