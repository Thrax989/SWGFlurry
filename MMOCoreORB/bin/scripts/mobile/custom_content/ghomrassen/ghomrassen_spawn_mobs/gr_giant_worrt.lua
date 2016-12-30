gr_giant_worrt = Creature:new {
	objectName = "@mob/creature_names:giant_worrt",
	socialGroup = "worrt",
	faction = "",
	level = 80,
	chanceHit = 0.98,
	damageMin = 350,
	damageMax = 450,
	baseXp = 856,
	baseHAM = 12000,
	baseHAMmax = 16000,
	armor = 0,
	resists = {0,0,0,0,0,110,0,-1,-1},
	meatType = "meat_reptilian",
	meatAmount = 450,
	hideType = "hide_leathery",
	hideAmount = 450,
	boneType = "bone_mammal",
	boneAmount = 450,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/giant_worrt.iff"},
	controlDeviceTemplate = "object/intangible/pet/worrt_hue.iff",
	scale = 4,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(gr_giant_worrt, "gr_giant_worrt")
