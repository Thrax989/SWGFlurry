bonecracker_bantha = Creature:new {
	objectName = "@mob/creature_names:bantha_bonecracker",
	socialGroup = "bantha",
	faction = "",
	level = 60,
	chanceHit = 0.55,
	damageMin = 470,
	damageMax = 650,
	baseXp = 5830,
	baseHAM = 11000,
	baseHAMmax = 14000,
  armor = 3,
	resists = {160,165,150,160,120,140,130,130,140},
	meatType = "meat_herbivore",
	meatAmount = 950,
	hideType = "hide_wooly",
	hideAmount = 690,
	boneType = "bone_mammal",
	boneAmount = 600,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 2,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/bantha_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/bantha_hue.iff",
	scale = 1.3,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack","stateAccuracyBonus=100"},
		{"stunattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(bonecracker_bantha, "bonecracker_bantha")
