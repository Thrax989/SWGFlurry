bolma_female = Creature:new {
	objectName = "@mob/creature_names:bolma_female",
	socialGroup = "bolma",
	faction = "",
	level = 26,
	chanceHit = 0.35,
	damageMin = 230,
	damageMax = 240,
	baseXp = 2637,
	baseHAM = 7200,
	baseHAMmax = 8800,
	armor = 0,
	resists = {135,130,10,10,-1,-1,10,10,-1},
	meatType = "meat_wild",
	meatAmount = 500,
	hideType = "hide_leathery",
	hideAmount = 500,
	boneType = "bone_mammal",
	boneAmount = 500,
	milkType = "milk_wild",
	milk = 500,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/bolma_hue.iff"},
	scale = 1.1,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(bolma_female, "bolma_female")
