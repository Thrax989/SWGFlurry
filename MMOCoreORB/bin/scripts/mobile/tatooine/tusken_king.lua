tusken_king = Creature:new {
	customName = "\\#00ff00<<< Tusken King >>> \\#0000ff[lvl 300]",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 300,
	chanceHit = 50.0,
	damageMin = 1645,
	damageMax = 3000,
	baseXp = 25167,
	baseHAM = 261000,
	baseHAMmax = 320000,
	armor = 3,
	resists = {150,150,150,150,150,150,150,150,150},
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
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.5,	

	templates = {"object/mobile/tusken_raider.iff"},
	lootGroups = {
		{
			groups = {
				{group = "boss_rare", chance = 10000000},
			},
			lootChance = 1000000
		},	
		{
			groups = {
				{group = "boss_rare", chance = 10000000},
			},
			lootChance = 1000000
		},	
		{
			groups = {
				{group = "g_named_crystals", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "capes", chance = 10000000},
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "weapon_component_advanced", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "weapon_component_advanced", chance = 10000000},
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000},
			},
			lootChance = 2000000
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
			lootChance = 2500000
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
	weapons = {"tusken_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,brawlermaster,fencermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(tusken_king, "tusken_king")
