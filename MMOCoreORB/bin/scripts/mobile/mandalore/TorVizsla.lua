tor_vizsla = Creature:new {
	objectName = "",
	customName = "\\#00ff00<<< Tor Vizsla II >>> \\#ff0000[lvl 300]",
	socialGroup = "death_watch",
	pvpFaction = "death_watch",
	faction = "",
	level = 350,
	chanceHit = 95,
	damageMin = 8500,
	damageMax = 10000,
	specialDamageMult = 2.5,
	baseXp = 20948,
	baseHAM = 1250000,
	baseHAMmax = 1500000,
	armor = 3,
	resists = {165,165,165,165,165,165,165,165,200},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_death_watch_gold.iff"},
	lootGroups = {
		{
			groups = {
				{group = "boss_rare", chance = 10000000},
			},
			lootChance = 10000000
		},		
		{
			groups = {
				{group = "death_watch_bunker_lootbox", chance = 10000000},
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
				{group = "death_watch_bunker_ingredient_binary", chance = 10000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "death_watch_bunker_ingredient_protective", chance = 10000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 25000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 25000000
		},
		{
			groups = {
				{group = "death_watch_bunker_lootbox", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "death_watch_bunker_commoners", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "blacksun_rare", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "heavy_weapons", chance = 10000000},
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 50000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 50000000
		},
		{
			groups = {
				{group = "weapons_all", chance = 10000000},
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
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "boss_rare", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 10000000
		}
	},
	weapons = {"mandalorian_weapons_heavy"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(pikemanmaster,tkamaster,marksmanmaster,pistoleermaster,carbineermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(tor_vizsla, "tor_vizsla")
