elliot = Creature:new {
	-- objectName = "@mob/creature_names:",
	customName = "Elliot (Mad Scientist)",
	socialGroup = "self",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 25,
	damageMin = 2100,
	damageMax = 2400,
	baseXp = 35409,
	baseHAM = 775000,
	baseHAMmax = 795000,
	armor = 0,
	resists = {50,50,50,50,50,50,50,50,25},
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
		"object/mobile/dressed_geonosian_scientist_01.iff",
		"object/mobile/dressed_geonosian_scientist_02.iff"},
	lootGroups = {
		{
			groups = {
				{group = "wep_comps", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "wep_comps", chance = 10000000}
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "wep_comps", chance = 10000000}
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "wep_comps", chance = 10000000}
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "janta_rare", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "janta_rare", chance = 10000000}
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "janta_rare", chance = 10000000}
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "janta_rare", chance = 10000000}
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "geonosian_common", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "geonosian_common", chance = 10000000}
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "geonosian_common", chance = 10000000}
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "geonosian_common", chance = 10000000}
			},
			lootChance = 5000000
		},
		},	
	weapons = {"imperial_weapons_heavy"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster,pikemanmaster,fencermaster,swordsmanmaster,tkamaster,pistoleermaster,commandomaster)
}

CreatureTemplates:addCreatureTemplate(elliot, "elliot")
