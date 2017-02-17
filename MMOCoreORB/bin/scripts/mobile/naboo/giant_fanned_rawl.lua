giant_fanned_rawl = Creature:new {
	objectName = "",
	customName = "a giant fanned rawl",
	socialGroup = "rawl",
	faction = "",
	level = 11,
	chanceHit = 0.3,
	damageMin = 130,
	damageMax = 140,
	baseXp = 456,
	baseHAM = 910,
	baseHAMmax = 1100,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "meat_reptilian",
	meatAmount = 35,
	hideType = "hide_scaley",
	hideAmount = 25,
	boneType = "bone_mammal",
	boneAmount = 17,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 3,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/fanned_rawl_hue.iff"},
	scale = 1.5,
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "wearables_all", chance = 5000000},
				{group = "loot_kit_parts", chance = 2500000},
				{group = "tailor_components", chance = 2500000}
			},
			lootChance = 10000000
		},
		},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack",""},
		{"mildpoison",""}
	}
}

CreatureTemplates:addCreatureTemplate(giant_fanned_rawl, "giant_fanned_rawl")
