male_tybis = Creature:new {
	objectName = "@mob/creature_names:tybis_male",
	socialGroup = "tybis",
	faction = "",
	level = 23,
	chanceHit = 0.35,
	damageMin = 220,
	damageMax = 230,
	baseXp = 2219,
	baseHAM = 6300,
	baseHAMmax = 7700,
	armor = 0,
	resists = {10,10,10,10,10,10,10,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 500,
	hideType = "hide_bristley",
	hideAmount = 500,
	boneType = "bone_mammal",
	boneAmount = 500,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/tybis.iff"},
	scale = 1.05,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(male_tybis, "male_tybis")
