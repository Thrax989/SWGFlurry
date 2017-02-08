milliana = Creature:new {
	-- objectName = "@mob/creature_names:",
	customName = "Milliana (Armored Goddess)",
	socialGroup = "self",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 85,
	damageMin = 7700,
	damageMax = 7900,
	baseXp = 1435409,
	baseHAM = 25000000,
	baseHAMmax = 25100000,
	armor = 0,
	resists = {90,90,90,90,90,90,90,90,90},
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
				{group = "milliana", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "milliana", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "milliana", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "milliana", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "milliana", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "milliana", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "milliana", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "milliana", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "milliana", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "milliana", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "milliana", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "milliana", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "milliana", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "milliana", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "milliana", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "milliana", chance = 10000000}
			},
			lootChance = 10000000
		},
		 {
			groups = {
				{group = "barc_speeder_deed_group", chance = 10000000}
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "milliana", chance = 10000000}
			},
			lootChance = 10000000
		 },
			{
			groups = {
				{group = "milliana", chance = 10000000}
			},
			lootChance = 10000000
		 },
		{
			groups = {
				{group = "milliana", chance = 10000000}
			},
			lootChance = 10000000
		 },
		{
			groups = {
				{group = "milliana", chance = 10000000}
			},
			lootChance = 10000000
		 },
		{
			groups = {
				{group = "milliana", chance = 10000000}
			},
			lootChance = 10000000
		 },
		},	
	weapons = {"imperial_weapons_heavy"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster,pikemanmaster,fencermaster,swordsmanmaster,tkamaster,pistoleermaster,commandomaster)
}

CreatureTemplates:addCreatureTemplate(milliana, "milliana")
