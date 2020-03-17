singing_mountain_clan_councilwoman = Creature:new {
	objectName = "@mob/creature_names:singing_mtn_clan_councilwoman",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "mtn_clan",
	faction = "mtn_clan",
	level = 253,
	chanceHit = 23.5,
	damageMin = 1395,
	damageMax = 2500,
	baseXp = 24180,
	baseHAM = 261000,
	baseHAMmax = 320000,
	armor = 3,
	resists = {100,35,35,100,100,100,100,100,-1},
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
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_sing_mt_clan_councilwoman.iff"},
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
				{group = "melee_weapons", chance = 10000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "rifles", chance = 10000000},
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "wearables_common", chance = 10000000},
			},
			lootChance = 500000
		},
		{
			groups = {
				{group = "carbines", chance = 10000000},
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "tailor_components", chance = 10000000},
			},
			lootChance = 500000
		},
		{
			groups = {
				{group = "pistols", chance = 10000000},
			},
			lootChance = 1000000
		},
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,pikemanmaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(singing_mountain_clan_councilwoman, "singing_mountain_clan_councilwoman")
