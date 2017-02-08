Zamidirin = Creature:new {
	-- objectName = "@mob/creature_names:",
	customName = "Zamidirin (Force Crystal Horder)",
	socialGroup = "kun",
	faction = "",
	level = 300,
	chanceHit = 25,
	damageMin = 2275,
	damageMax = 3250,
	baseXp = 585921,
	baseHAM = 3200000,
	baseHAMmax = 3350000,
	armor = 0,
	resists = {50,50,50,50,50,50,50,50,50},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dark_force_crystal_hunter.iff"},
	lootGroups = {
		{
			groups = {
				{group = "axkva_min", chance = 10000000}
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "axkva_min", chance = 10000000}
			},
			lootChance = 5000000
		 },
		 {
			groups = {
				{group = "axkva_min", chance = 10000000}
			},
			lootChance = 5000000
		 },
		 {
			groups = {
				{group = "axkva_min", chance = 10000000}
			},
			lootChance = 5000000
		 },
		 {
			groups = {
				{group = "barc_speeder_deed_group", chance = 10000000}
			},
			lootChance = 250000
		},
		{
			groups = {
				{group = "saberhand27", chance = 10000000}
			},
			lootChance = 5000000
		 },
			{
			groups = {
				{group = "saberhand27", chance = 10000000}
			},
			lootChance = 5000000
		 },
		{
			groups = {
				{group = "saberhand27", chance = 10000000}
			},
			lootChance = 5000000
		 },
		{
			groups = {
				{group = "saberhand27", chance = 10000000}
			},
			lootChance = 5000000
		 },
		{
			groups = {
				{group = "g_named_crystals", chance = 10000000}
			},
			lootChance = 5000000
		 },
		{
			groups = {
				{group = "g_named_crystals", chance = 10000000}
			},
			lootChance = 5000000
		 },
		{
			groups = {
				{group = "g_named_crystals", chance = 10000000}
			},
			lootChance = 5000000
		},
		 {
			groups = {
				{group = "g_named_crystals", chance = 10000000}
			},
			lootChance = 5000000
		},
		},	
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,fencermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(Zamidirin, "Zamidirin")
