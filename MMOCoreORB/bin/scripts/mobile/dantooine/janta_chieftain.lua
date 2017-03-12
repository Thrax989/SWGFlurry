janta_chieftain = Creature:new {
	customName = "Janta Chieftain",
	socialGroup = "janta_tribe",
	faction = "janta_tribe",
	level = 300,
	chanceHit = 50.00,
	damageMin = 1800,
	damageMax = 3310,
	baseXp = 27849,
	baseHAM = 321000,
	baseHAMmax = 392000,
	armor = 0,
	resists = {50,50,50,50,50,50,50,50,50},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 2.0,

	templates = {"object/mobile/dantari_male.iff"},
	lootGroups = {
		{
			groups = {
				{group = "armor_attachments", chance = 1000000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "crystals_premium", chance = 4000000},
				{group = "pearls_flawless", chance = 4000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "wearables_rare", chance = 10000000},
				{group = "aakuan_common", chance = 10000000},
				{group = "g_named_crystals", chance = 10000000}

			},
			lootChance = 7500000
	},
	{
		groups = {
			{group = "janta_common", chance = 10000000},
			{group = "armor_attachments", chance = 10000000},
			{group = "clothing_attachments", chance = 10000000}

		},
		lootChance = 6000000
		},
		{
			groups = {
			{group = "krayt_tissue_rare", chance = 10000000}
		},
		lootChance = 6000000
		},
		{
		groups = {
			{group = "looted_container", chance = 10000000},
				},
				lootChance = 6000000
			},
			{
			groups = {
				{group = "pearls_flawless", chance = 10000000},
					},
					lootChance = 6000000
				},
				{
				groups = {
					{group = "janta_rare", chance = 10000000},
						},
						lootChance = 2000000
					},
					},

	weapons = {"tusken_weapons"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(tkamaster,swordsmanmaster,fencermaster,pikemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(janta_chieftain, "janta_chieftain")
