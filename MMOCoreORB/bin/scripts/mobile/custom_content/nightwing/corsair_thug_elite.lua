corsair_thug_elite = Creature:new {
	customName = "Mike (Dune Corsair Lt.)",
	socialGroup = "self",
	faction = "",
	level = 100,
	chanceHit = 0.85,
	damageMin = 570,
	damageMax = 850,
	baseXp = 1864,
	baseHAM = 13300,
	baseHAMmax = 16300,
	armor = 3,
	resists = {65,65,50,75,75,70,70,65,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + AGGRESSIVE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_assassin_mission_giver_02.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 5000000},
				{group = "armor_all", chance = 2500000},
				{group = "weapons_all", chance = 2500000}
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
	weapons = {"ranged_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmannovice,brawlernovice)
}

CreatureTemplates:addCreatureTemplate(corsair_thug_elite, "corsair_thug_elite")
