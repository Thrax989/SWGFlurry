graul_mangler = Creature:new {
	objectName = "@mob/creature_names:graul_mangler",
	socialGroup = "graul",
	faction = "",
	level = 40,
	chanceHit = 1.25,
	damageMin = 400,
	damageMax = 490,
	baseXp = 8000,
	baseHAM = 10000,
	baseHAMmax = 12500,
	armor = 1,
	resists = {160,165,160,160,160,145,150,145,-1},
	meatType = "meat_carnivore",
	meatAmount = 950,
	hideType = "hide_leathery",
	hideAmount = 975,
	boneType = "bone_mammal",
	boneAmount = 975,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 10,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/graul_hue.iff"},
	hues = { 8, 9, 10, 11, 12, 13, 14, 15 },
	controlDeviceTemplate = "object/intangible/pet/graul_hue.iff",
	scale = 1.1,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareableeding","stateAccuracyBonus=75"},
		{"blindattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(graul_mangler, "graul_mangler")
