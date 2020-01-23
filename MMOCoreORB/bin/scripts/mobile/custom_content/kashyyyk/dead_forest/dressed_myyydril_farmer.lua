dressed_myyydril_farmer = Creature:new {
	customName = "a Myyydril farmer",
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 4,
	chanceHit = 0.24,
	damageMin = 40,
	damageMax = 45,
	baseXp = 62,
	baseHAM = 113,
	baseHAMmax = 118,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_myyydril_farmer_f_01.iff",
		"object/mobile/dressed_myyydril_farmer_f_02.iff",
		"object/mobile/dressed_myyydril_farmer_f_03.iff",
		"object/mobile/dressed_myyydril_farmer_m_01.iff",
		"object/mobile/dressed_myyydril_farmer_m_02.iff",
		"object/mobile/dressed_myyydril_farmer_m_03.iff"
		},
	scale = 1.2,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(dressed_myyydril_farmer, "dressed_myyydril_farmer")
