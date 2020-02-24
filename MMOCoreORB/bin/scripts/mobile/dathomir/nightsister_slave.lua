nightsister_slave = Creature:new {
	objectName = "@mob/creature_names:nightsister_slave",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 15,
	chanceHit = 0.31,
	damageMin = 160,
	damageMax = 170,
	baseXp = 714,
	baseHAM = 1500,
	baseHAMmax = 1900,
	armor = 0,
	resists = {5,5,5,0,0,0,0,5,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_nightsister_slave.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "nge_all", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "wearables_common", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "loot_kit_parts", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "tailor_components", chance = 10000000},
			},
			lootChance = 5000000
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = brawlermid
}

CreatureTemplates:addCreatureTemplate(nightsister_slave, "nightsister_slave")
