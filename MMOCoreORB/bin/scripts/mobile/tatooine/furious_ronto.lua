furious_ronto = Creature:new {
	objectName = "@mob/creature_names:ronto_furious",
	socialGroup = "ronto",
	faction = "",
	level = 60,
	chanceHit = 0.55,
	damageMin = 470,
	damageMax = 650,
	baseXp = 5830,
	baseHAM = 11000,
	baseHAMmax = 14000,
  armor = 3,
	resists = {165,165,140,160,140,130,135,140,140},
	meatType = "meat_herbivore",
	meatAmount = 930,
	hideType = "hide_leathery",
	hideAmount = 640,
	boneType = "bone_mammal",
	boneAmount = 400,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 1,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/ronto_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/ronto_hue.iff",
	scale = 1.25,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack","stateAccuracyBonus=100"},
		{"stunattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(furious_ronto, "furious_ronto")
