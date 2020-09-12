worldboss_8 = Creature:new {
	customName = "\\#00ff00<<< Nightsister Tamer >>> \\#0000ff[lvl 300]",
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 300,
	chanceHit = 80.0,
	damageMin = 4500,
	damageMax = 6500,
	specialDamageMult = 10.0,    
	baseXp = 20000,
	baseHAM = 400000,
	baseHAMmax = 500000,
	armor = 3,
	resists = {150,150,150,150,130,150,150,150,150},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
        scale = 1.5,

	templates = {"object/mobile/dressed_dathomir_nightsister_rancor_tamer.iff"},
	lootGroups = {
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
				{group = "boss_rare", chance = 10000000},
		},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000}			
		},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "nightsister_common", chance = 10000000}
		},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "boss_common", chance = 10000000}
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
				{group = "boss_rare", chance = 10000000}
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
				{group = "tierdiamond", chance = 10000000}
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
				{group = "tierdiamond", chance = 10000000}
		},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "axkva_min", chance = 10000000}
		},
			lootChance = 10000000
		},
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(swordsmanmaster,fencermaster,tkamaster,pikemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(worldboss_8, "worldboss_8")
