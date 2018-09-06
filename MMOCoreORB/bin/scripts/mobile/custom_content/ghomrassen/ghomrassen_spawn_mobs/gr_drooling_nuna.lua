gr_drooling_nuna = Creature:new {
	objectName = "@mob/creature_names:dwarf_nuna_drooling",
	socialGroup = "nuna",
	faction = "",
	level = 80,
	chanceHit = 0.98,
	damageMin = 350,
	damageMax = 450,
	baseXp = 856,
	baseHAM = 12000,
	baseHAMmax = 16000,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "meat_avian",
	meatAmount = 180,
	hideType = "hide_leathery",
	hideAmount = 180,
	boneType = "bone_avian",
	boneAmount = 180,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dwarf_nuna.iff"},
	controlDeviceTemplate = "object/intangible/pet/dwarf_nuna_hue.iff",
	scale = 1.2,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(gr_drooling_nuna, "gr_drooling_nuna")
