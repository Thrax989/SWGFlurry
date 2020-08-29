elder_pulverizer = Creature:new {
	objectName = "@mob/creature_names:bolle_bol_elder_pulverizer",
	socialGroup = "bol",
	faction = "",
	level = 60,
	chanceHit = 0.55,
	damageMin = 470,
	damageMax = 650,
	baseXp = 5830,
	baseHAM = 11000,
	baseHAMmax = 14000,
  armor = 3,
	resists = {165,165,165,145,145,160,145,140,140},
	meatType = "meat_herbivore",
	meatAmount = 900,
	hideType = "hide_leathery",
	hideAmount = 600,
	boneType = "bone_mammal",
	boneAmount = 360,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 6,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/bolle_bol_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/bolle_bol_hue.iff",
	scale = 1.2,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack","stateAccuracyBonus=100"},
		{"knockdownattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(elder_pulverizer, "elder_pulverizer")
