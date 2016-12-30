gr_great_squill = Creature:new {
	objectName = "@mob/creature_names:squill_great",
	socialGroup = "squill",
	faction = "",
	level = 80,
	chanceHit = 0.98,
	damageMin = 350,
	damageMax = 450,
	baseXp = 856,
	baseHAM = 12000,
	baseHAMmax = 16000,
	armor = 0,
	resists = {110,110,10,10,-1,-1,10,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 6,
	hideType = "hide_leathery",
	hideAmount = 6,
	boneType = "bone_mammal",
	boneAmount = 5,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/squill_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/squill_hue.iff",
	scale = 1.25,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(gr_great_squill, "gr_great_squill")
