worrt_gutbuster = Creature:new {
	objectName = "@mob/creature_names:worrt_gutbuster",
	socialGroup = "worrt",
	faction = "",
	level = 16,
	chanceHit = 0.33,
	damageMin = 160,
	damageMax = 170,
	baseXp = 960,
	baseHAM = 2900,
	baseHAMmax = 3500,
	armor = 0,
	resists = {0,0,0,0,0,110,0,-1,-1},
	meatType = "meat_reptilian",
	meatAmount = 500,
	hideType = "hide_leathery",
	hideAmount = 500,
	boneType = "bone_mammal",
	boneAmount = 500,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/worrt.iff"},
	scale = 4.5,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(worrt_gutbuster, "worrt_gutbuster")
