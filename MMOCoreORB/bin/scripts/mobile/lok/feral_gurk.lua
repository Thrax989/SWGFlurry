feral_gurk = Creature:new {
	objectName = "@mob/creature_names:feral_gurk",
	socialGroup = "self",
	faction = "",
	level = 34,
	chanceHit = 0.41,
	damageMin = 345,
	damageMax = 400,
	baseXp = 3370,
	baseHAM = 8400,
	baseHAMmax = 10200,
	armor = 0,
	resists = {135,20,20,20,140,-1,-1,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 500,
	hideType = "hide_leathery",
	hideAmount = 500,
	boneType = "bone_mammal",
	boneAmount = 500,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/gurk_hue.iff"},
	scale = 1.15,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(feral_gurk, "feral_gurk")
