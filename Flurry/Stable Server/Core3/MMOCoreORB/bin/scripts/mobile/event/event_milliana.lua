event_milliana = Creature:new {
	-- objectName = "@mob/creature_names:",
	customName = "Milliana (Armored Goddess)",
	socialGroup = "event",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 50.0,
	damageMin = 3000,
	damageMax = 6000,
	baseXp = 28549,
	baseHAM = 9500000,
	baseHAMmax = 9900000,
	armor = 3,
	resists = {195,195,195,195,195,195,195,195,195},
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
	scale = 3.0,
	
	templates = {
		"object/mobile/dressed_aakuan_keeper_zabrak_female_01.iff",
		"object/mobile/dressed_aakuan_warder_zabrak_female_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "weapons_all", chance = 10000000}				
		},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "g_named_crystals", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "g_cloak_of_hate", chance = 10000000},
			},
			lootChance = 500000
		},
		{
			groups = {
				{group = "capes", chance = 10000000},
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "nge_all", chance = 10000000}			
		},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierone", chance = 10000000}
		},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tiertwo", chance = 10000000}
		},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}
		},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tiertwo", chance = 10000000}
		},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}
		},
			lootChance = 10000000
		},
{
			groups = {
				{group = "tiertwo", chance = 10000000}
		},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}
		},
			lootChance = 10000000
		},
{
			groups = {
				{group = "tiertwo", chance = 10000000}
		},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "worldbosscrate", chance = 10000000}
		},
			lootChance = 10000000
		},
},	
	weapons = {"imperial_weapons_heavy"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster,pikemanmaster,fencermaster,swordsmanmaster,tkamaster,pistoleermaster,commandomaster)
}

CreatureTemplates:addCreatureTemplate(event_milliana, "event_milliana")
