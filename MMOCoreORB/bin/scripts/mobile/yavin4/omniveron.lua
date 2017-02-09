omniveron = Creature:new {
	-- objectName = "@mob/creature_names:",
	customName = "Omniveron (Destruction Incarnate)",
	socialGroup = "self",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 90,
	damageMin = 7100,
	damageMax = 7300,
	baseXp = 2000000,
	baseHAM = 100000000,
	baseHAMmax = 110000000,
	armor = 3,
	resists = {199,199,199,199,199,199,199,199,199},
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
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED + INTERESTING,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_aakuan_keeper_zabrak_female_01.iff",
		"object/mobile/dressed_aakuan_warder_zabrak_female_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "omniveron", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "omniveron", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "omniveron", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "omniveron", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "omniveron", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "omniveron", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "omniveron", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "omniveron", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "omniveron", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "omniveron", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "omniveron", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "omniveron", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "omniveron", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "omniveron", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "omniveron", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "omniveron", chance = 10000000}
			},
			lootChance = 10000000
		},
		 {
			groups = {
				{group = "barc_speeder_deed_group", chance = 10000000}
			},
			lootChance = 3000000
		},
		 {
			groups = {
				{group = "barc_speeder_deed_group", chance = 10000000}
			},
			lootChance = 3000000
		},
		 {
			groups = {
				{group = "barc_speeder_deed_group", chance = 10000000}
			},
			lootChance = 3000000
		},
		{
			groups = {
				{group = "omniveron", chance = 10000000}
			},
			lootChance = 10000000
		 },
			{
			groups = {
				{group = "omniveron", chance = 10000000}
			},
			lootChance = 10000000
		 },
		{
			groups = {
				{group = "omniveron", chance = 10000000}
			},
			lootChance = 10000000
		 },
		{
			groups = {
				{group = "omniveron", chance = 10000000}
			},
			lootChance = 10000000
		 },
		},	
	weapons = {"imperial_weapons_heavy"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster,pikemanmaster,fencermaster,swordsmanmaster,tkamaster,pistoleermaster,commandomaster)
}

CreatureTemplates:addCreatureTemplate(omniveron, "omniveron")
