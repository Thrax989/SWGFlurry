exar_guard = Creature:new {
	customName = "Cultist Guard",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "exar",
	faction = "exar",
	level = 300,
	chanceHit = 30.00,
	damageMin = 1600,
	damageMax = 2250,
	baseXp = 26654,
	baseHAM = 175000,
	baseHAMmax = 195000,
	armor = 0,
	resists = {75,75,75,75,75,75,75,75,75},
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
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/exar_kun_cultist.iff"},
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
				{group = "wearables_scarce", chance = 10000000},
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
	attacks = merge(tkamaster,swordsmanmaster,fencermaster,pikemanmaster,brawlermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(exar_guard, "exar_guard")
