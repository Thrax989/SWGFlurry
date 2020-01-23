me_minor_worrt = Creature:new {
	objectName = "@mob/creature_names:minor_worrt",
	socialGroup = "worrt",
	faction = "",
	level = 7,
	chanceHit = 0.23,
	damageMin = 55,
	damageMax = 75,
	baseXp = 85,
	baseHAM = 100,
	baseHAMmax = 160,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "meat_reptilian",
	meatAmount = 5,
	hideType = "hide_leathery",
	hideAmount = 5,
	boneType = "bone_mammal",
	boneAmount = 2,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/worrt_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/worrt_hue.iff",
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(me_minor_worrt, "me_minor_worrt")
