nightsister_elder_2 = Creature:new {
	-- objectName = "@mob/creature_names:",
	customName = "Nightsister Elder 2",
	randomNameTag = true,
	socialGroup = "nightsister",
	faction = "",
	level = 300,
	chanceHit = 50.00,
	damageMin = 1800,
	damageMax = 3310,
	baseXp = 27849,
	baseHAM = 321000,
	baseHAMmax = 392000,
	armor = 0,
	resists = {70,70,70,70,70,70,70,70,70},
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
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	templates = {"object/mobile/dressed_dathomir_nightsister_elder.iff"},
	lootGroups = {
		{
			groups = {
				{group = "axkva_min", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "nge1", chance = 10000000}
			},
			lootChance = 5000000
		 },
		 {
			groups = {
				{group = "barc_speeder_deed_group", chance = 10000000}
			},
			lootChance = 100000
		},
		{
			groups = {
				{group = "nightsister_common", chance = 10000000}
			},
			lootChance = 10000000
		 },
		{
			groups = {
				{group = "wearables_rare", chance = 10000000}
			},
			lootChance = 10000000
		 },
		{
			groups = {
				{group = "weapons_all", chance = 10000000}
			},
			lootChance = 10000000
		 },
		{
			groups = {
				{group = "melee_weapons", chance = 10000000}
			},
			lootChance = 10000000
		 },
		{
			groups = {
				{group = "axkva_min", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		},
		 {
			groups = {
				{group = "axkva_min", chance = 5000000},
				{group = "nightsister_common", chance = 5000000}
			},
			lootChance = 5000000
		},
		},	
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(tkamaster,swordsmanmaster,fencermaster,pikemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(nightsister_elder_2, "nightsister_elder_2")
