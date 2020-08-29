deranged_ravisher = Creature:new {
	objectName = "@mob/creature_names:squill_deranged_ravisher",
	socialGroup = "squill",
	faction = "",
	level = 60,
	chanceHit = 0.55,
	damageMin = 470,
	damageMax = 650,
	baseXp = 5830,
	baseHAM = 11000,
	baseHAMmax = 14000,
  armor = 3,
	resists = {160,165,145,145,145,175,195,165,140},
	meatType = "meat_carnivore",
	meatAmount = 130,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/squill_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/squill_hue.iff",
	scale = 1.35,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack","stateAccuracyBonus=100"},
		{"strongdisease","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(deranged_ravisher, "deranged_ravisher")
