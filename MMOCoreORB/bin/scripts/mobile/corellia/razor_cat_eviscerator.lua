razor_cat_eviscerator = Creature:new {
	objectName = "@mob/creature_names:razor_cat_eviscerator",
	socialGroup = "panther",
	faction = "",
	level = 25,
	chanceHit = 1.25,
	damageMin = 270,
	damageMax = 280,
	baseXp = 5043,
	baseHAM = 8000,
	baseHAMmax = 9600,
	armor = 1,
	resists = {160,160,145,165,170,145,145,140,-1},
	meatType = "meat_carnivore",
	meatAmount = 130,
	hideType = "hide_bristley",
	hideAmount = 70,
	boneType = "bone_mammal",
	boneAmount = 60,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/corellian_sand_panther_hue.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/pet/corellian_sand_panther_hue.iff",
	scale = 1.1,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack","stateAccuracyBonus=75"},
		{"intimidationattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(razor_cat_eviscerator, "razor_cat_eviscerator")
