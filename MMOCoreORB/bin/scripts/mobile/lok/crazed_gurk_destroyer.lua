crazed_gurk_destroyer = Creature:new {
	objectName = "@mob/creature_names:crazed_gurk_destroyer",
	socialGroup = "gurk",
	faction = "",
	level = 100,
	chanceHit = 50.0,
	damageMin = 2000,
	damageMax = 4000,
	baseXp = 4279,
	baseHAM = 20000,
	baseHAMmax = 40000,
	armor = 1,
	resists = {30,30,30,30,30,30,30,30,20},
	meatType = "meat_herbivore",
	meatAmount = 300,
	hideType = "hide_leathery",
	hideAmount = 275,
	boneType = "bone_mammal",
	boneAmount = 300,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/gurk_hue.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/pet/gurk_hue.iff",
	scale = 1.25,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack",""},
		{"intimidationattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(crazed_gurk_destroyer, "crazed_gurk_destroyer")
