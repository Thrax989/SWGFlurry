bol_pack_runner = Creature:new {
	objectName = "@mob/creature_names:bol_pack_runner",
	socialGroup = "bol",
	faction = "",
	level = 26,
	chanceHit = 0.36,
	damageMin = 230,
	damageMax = 240,
	baseXp = 2637,
	baseHAM = 8200,
	baseHAMmax = 10000,
	armor = 0,
	resists = {125,125,15,15,-1,-1,15,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 500,
	hideType = "hide_leathery",
	hideAmount = 500,
	boneType = "bone_mammal",
	boneAmount = 500,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/bol_pack_runner.iff"},
	scale = 0.95,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack",""},
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(bol_pack_runner, "bol_pack_runner")
