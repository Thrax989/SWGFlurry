droid_pvp = Creature:new {
	customName = "Emperor's Security Droid",
	socialGroup = "self",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 35.00,
	damageMin = 500,
	damageMax = 750,
	baseXp = 5000,
	baseHAM = 50000,
	baseHAMmax = 100000,
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
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
        scale = 0.5,
	
		templates = {
		"object/mobile/battle_droid.iff",
		"object/mobile/super_battle_droid.iff"
		},
	lootGroups = {
		{
		groups = {
				{group = "backpacks_b01", chance = 5000000},
				{group = "backpacks_b02", chance = 5000000}

			},
			lootChance = 500000
		},		
		{
		groups = {
				{group = "foods_lg", chance = 10000000}

			},
			lootChance = 2000000
		},
		{
		groups = {
				{group = "armor_attachments", chance = 4850000},
				{group = "clothing_attachments", chance = 4850000},
				{group = "hologram_lg1", chance = 200000},
				{group = "tokens_lg", chance = 100000}

			},
			lootChance = 10000000
		},
		{
		groups = {
				{group = "armor_attachments", chance = 4850000},
				{group = "clothing_attachments", chance = 4850000},
				{group = "hologram_lg2", chance = 200000},
				{group = "tokens_lg", chance = 100000}

			},
			lootChance = 10000000
		},
	},
	weapons = {"primitive_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(pikemanmaster,fencermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(droid_pvp, "droid_pvp")
