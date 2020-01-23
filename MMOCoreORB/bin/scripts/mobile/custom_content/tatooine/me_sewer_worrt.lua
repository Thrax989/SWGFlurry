me_sewer_worrt = Creature:new {
	objectName = "@mob/creature_names:me_sewer_worrt",
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
	meatAmount = 19,
	hideType = "hide_leathery",
	hideAmount = 19,
	boneType = "bone_mammal",
	boneAmount = 14,
	milk = 0,
	tamingChance = 0,
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
CreatureTemplates:addCreatureTemplate(me_sewer_worrt, "me_sewer_worrt")
