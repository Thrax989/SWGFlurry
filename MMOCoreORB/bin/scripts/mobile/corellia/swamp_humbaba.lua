swamp_humbaba = Creature:new {
	objectName = "@mob/creature_names:swamp_humbaba",
	socialGroup = "humbaba",
	faction = "",
	level = 19,
	chanceHit = 0.33,
	damageMin = 160,
	damageMax = 170,
	baseXp = 1426,
	baseHAM = 5000,
	baseHAMmax = 6100,
	armor = 0,
	resists = {10,10,10,10,10,10,10,-1,-1},
	meatType = "meat_domesticated",
	meatAmount = 250,
	hideType = "hide_leathery",
	hideAmount = 150,
	boneType = "bone_mammal",
	boneAmount = 105,
	milkType = "milk_wild",
	milk = 120,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/savage_humbaba.iff"},
	scale = 1.1,
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
		{"",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(swamp_humbaba, "swamp_humbaba")
