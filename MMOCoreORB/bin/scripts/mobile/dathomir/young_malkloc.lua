young_malkloc = Creature:new {
	objectName = "@mob/creature_names:young_malkloc",
	socialGroup = "malkloc",
	faction = "",
	level = 20,
	chanceHit = 0.32,
	damageMin = 160,
	damageMax = 170,
	baseXp = 1609,
	baseHAM = 5000,
	baseHAMmax = 6100,
	armor = 0,
	resists = {125,125,5,5,-1,-1,-1,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 850,
	hideType = "hide_leathery",
	hideAmount = 900,
	boneType = "bone_mammal",
	boneAmount = 850,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/young_malkloc.iff"},
	scale = 0.75,
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
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(young_malkloc, "young_malkloc")
