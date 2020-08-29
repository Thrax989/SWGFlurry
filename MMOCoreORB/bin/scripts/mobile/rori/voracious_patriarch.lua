voracious_patriarch = Creature:new {
	objectName = "@mob/creature_names:torton_voracious_patriarch",
	socialGroup = "torton",
	faction = "",
	level = 60,
	chanceHit = 0.55,
	damageMin = 470,
	damageMax = 650,
	baseXp = 5830,
	baseHAM = 11000,
	baseHAMmax = 14000,
  armor = 3,
	resists = {165,160,185,145,155,145,155,170,140},
	meatType = "meat_carnivore",
	meatAmount = 1500,
	hideType = "hide_wooly",
	hideAmount = 1350,
	boneType = "bone_mammal",
	boneAmount = 1500,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 9,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/torton_hue.iff"},
	hues = { 8, 9, 10, 11, 12, 13, 14, 15 },
	controlDeviceTemplate = "object/intangible/pet/torton_hue.iff",
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack","stateAccuracyBonus=100"},
		{"intimidationattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(voracious_patriarch, "voracious_patriarch")
