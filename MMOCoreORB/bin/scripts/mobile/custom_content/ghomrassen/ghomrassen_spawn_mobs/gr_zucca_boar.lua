gr_zucca_boar = Creature:new {
	objectName = "@mob/creature_names:zucca_boar",
	socialGroup = "boar",
	faction = "",
	level = 90,
	chanceHit = 0.28,
	damageMin = 12000,
	damageMax = 13000,
	baseXp = 356,
	baseHAM = 12000,
	baseHAMmax = 16000,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 65,
	hideType = "hide_leathery",
	hideAmount = 40,
	boneType = "bone_mammal",
	boneAmount = 25,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = 0,
	diet = HERBIVORE,

	templates = {"object/mobile/zucca_boar.iff"},
	--controlDeviceTemplate = "object/intangible/pet/pet_control.iff", -- zucca_boar_hue.iff bugged in client
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(gr_zucca_boar, "gr_zucca_boar")
