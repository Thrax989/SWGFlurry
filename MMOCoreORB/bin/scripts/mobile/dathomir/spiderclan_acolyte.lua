spiderclan_acolyte = Creature:new {
	objectName = "@mob/creature_names:spider_nightsister_initiate",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "spider_nightsister",
	faction = "spider_nightsister",
	level = 64,
	chanceHit = 0.5,
	damageMin = 445,
	damageMax = 600,
	baseXp = 6196,
	baseHAM = 11000,
	baseHAMmax = 14000,
	armor = 1,
	resists = {35,85,100,50,100,100,50,100,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_spider_nightsister_initiate.iff"},
	lootGroups = {
		{
			groups = {
				{group = "power_crystals", chance = 10000000},
			},
			lootChance = 500000
		},
		{
			groups = {
				{group = "color_crystals", chance = 10000000},
			},
			lootChance = 500000
		},
		{
			groups = {
				{group = "nightsister_common", chance = 10000000},
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000},
			},
			lootChance = 250000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000},
			},
			lootChance = 250000
		},
		{
			groups = {
				{group = "wearables_common", chance = 10000000},
			},
			lootChance = 500000
		},
		{
			groups = {
				{group = "tailor_components", chance = 10000000},
			},
			lootChance = 500000
		},
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(spiderclan_acolyte, "spiderclan_acolyte")
