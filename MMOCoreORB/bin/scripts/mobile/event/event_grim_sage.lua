event_grim_sage = Creature:new {
	customName = "Grim Sage Soulserpent",
	socialGroup = "mercenary",
	faction = "",
	level = 300,
	chanceHit = 50.0,
	damageMin = 3000,
	damageMax = 6000,
	baseXp = 128549,
	baseHAM = 3900000,
	baseHAMmax = 4000000,
	armor = 3,
	resists = {195,195,195,195,195,195,195,195,200},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED + INTERESTING,
	diet = CARNIVORE,
	scale = 1.75,

	templates = {"object/mobile/dressed_dathomir_nightsister_sage.iff"},
		lootGroups = {
		{
			groups = {
				{group = "ancient_force_bread", chance = 10000000},
			},
			lootChance = 10000000
		},	
		{
			groups = {
				{group = "ancient_force_bread", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "jedi_pack_group", chance = 10000000},
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "jedi_belt_group", chance = 10000000},
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "jedi_jewelry", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "boss_rare", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "boss_rare", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "death_watch_bunker_ingredient_protective", chance = 5000000},
 				{group = "death_watch_bunker_ingredient_binary", chance = 5000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "death_watch_bunker_ingredient_protective", chance = 5000000},
 				{group = "death_watch_bunker_ingredient_binary", chance = 5000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "worldbosscrate", chance = 10000000},
			},
			lootChance = 10000000
		},
 		{
			groups = {
				{group = "worldbosscrate", chance = 10000000},
			},
			lootChance = 10000000
		},
 		{
			groups = {
				{group = "worldbosscrate", chance = 10000000},
			},
			lootChance = 10000000
		},   
		{
			groups = {
				{group = "worldbosscrate", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "boss_rare", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierone", chance = 1000000},
				{group = "tiertwo", chance = 1000000},
				{group = "tierthree", chance = 3000000},
				{group = "tierdiamond", chance = 5000000},
			},
			lootChance = 10000000
		},    
		{
			groups = {
				{group = "boss_rare", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierone", chance = 1000000},
				{group = "tiertwo", chance = 1000000},
				{group = "tierthree", chance = 3000000},
				{group = "tierdiamond", chance = 5000000},
			},
			lootChance = 10000000
		},    
		{
			groups = {
				{group = "tierone", chance = 1000000},
				{group = "tiertwo", chance = 1000000},
				{group = "tierthree", chance = 3000000},
				{group = "tierdiamond", chance = 5000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierone", chance = 1000000},
				{group = "tiertwo", chance = 1000000},
				{group = "tierthree", chance = 3000000},
				{group = "tierdiamond", chance = 5000000},
			},
			lootChance = 10000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(tkamaster,swordsmanmaster,fencermaster,pikemanmaster,brawlermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(event_grim_sage, "event_grim_sage")
