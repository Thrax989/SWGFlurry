gr_desert_razorback = Creature:new {
	objectName = "@mob/creature_names:desert_razorback",
	socialGroup = "boar",
	faction = "",
	level = 80,
	chanceHit = 0.98,
	damageMin = 350,
	damageMax = 450,
	baseXp = 856,
	baseHAM = 12000,
	baseHAMmax = 16000,
	armor = 0,
	resists = {20,20,20,20,-1,20,-1,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 500,
	hideType = "hide_leathery",
	hideAmount = 400,
	boneType = "bone_mammal",
	boneAmount = 500,
	milk = 0,
	tamingChance = 0.000000,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/zucca_boar_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/zucca_boar_hue.iff",
	scale = 1.15,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(gr_desert_razorback, "gr_desert_razorback")
