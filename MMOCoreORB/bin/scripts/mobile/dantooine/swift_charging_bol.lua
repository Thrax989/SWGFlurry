swift_charging_bol = Creature:new {
	objectName = "@mob/creature_names:bol_swift_charger",
	socialGroup = "bol",
	faction = "",
	level = 35,
	chanceHit = 1.25,
	damageMin = 350,
	damageMax = 400,
	baseXp = 6740,
	baseHAM = 9500,
	baseHAMmax = 11500,
	armor = 1,
	resists = {160,160,145,140,150,145,145,140,-1},
	meatType = "meat_herbivore",
	meatAmount = 360,
	hideType = "hide_leathery",
	hideAmount = 600,
	boneType = "bone_mammal",
	boneAmount = 360,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/bol_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/bol_hue.iff",
	scale = 1.1,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack","stateAccuracyBonus=100"},
		{"stunattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(swift_charging_bol, "swift_charging_bol")
