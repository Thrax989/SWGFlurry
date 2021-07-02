corrupted_deathsting_boss = Creature:new {
	customName = "Corrupted Deathsting",
	socialGroup = "krayt",
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
	meatType = "meat_carnivore",
	meatAmount = 1500,
	hideType = "hide_bristley",
	hideAmount = 1500,
	boneType = "bone_mammal",
	boneAmount = 1500,
	milk = 0,
	tamingChance = 0,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED + INTERESTING,
	diet = CARNIVORE,
	scale = 1.75,

	templates = {"object/mobile/som/deathsting.iff"},
	lootGroups = {
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
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=100"},
		{"creatureareaknockdown","stateAccuracyBonus=100"},
		{"posturedownattack","stateAccuracyBonus=100"},
		{"creatureareacombo","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(corrupted_deathsting_boss, "corrupted_deathsting_boss")
