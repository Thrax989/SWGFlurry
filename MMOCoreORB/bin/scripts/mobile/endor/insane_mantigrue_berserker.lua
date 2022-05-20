insane_mantigrue_berserker = Creature:new {
	objectName = "@mob/creature_names:mantigrue_insane_berserker",
	socialGroup = "mantigrue",
	faction = "",
	level = 60,
	chanceHit = 0.55,
	damageMin = 470,
	damageMax = 650,
	baseXp = 5830,
	baseHAM = 11000,
	baseHAMmax = 14000,
  armor = 3,
	resists = {165,160,200,150,150,140,150,200,140},
	meatType = "meat_carnivore",
	meatAmount = 170,
	hideType = "hide_wooly",
	hideAmount = 150,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/mantigrue_night_stalker.iff"},
	controlDeviceTemplate = "object/intangible/pet/perlek_hue.iff",
	scale = 1.25,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"blindattack","stateAccuracyBonus=100"},
		{"stunattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(insane_mantigrue_berserker, "insane_mantigrue_berserker")
