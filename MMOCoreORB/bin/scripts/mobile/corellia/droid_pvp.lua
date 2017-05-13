droid_pvp = Creature:new {
	customName = "Emperor's Security Droid",
	socialGroup = "self",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 50.00,
	damageMin = 750,
	damageMax = 1250,
	baseXp = 10000,
	baseHAM = 100000,
	baseHAMmax = 125000,
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
				{group = "armor_attachments", chance = 4750000},
				{group = "clothing_attachments", chance = 4750000},
				{group = "looted_container", chance = 250000},
				{group = "tokens_lg", chance = 250000}

			},
			lootChance = 10000000
		},
		{
		groups = {
				{group = "armor_attachments", chance = 4750000},
				{group = "clothing_attachments", chance = 4750000},
				{group = "looted_container", chance = 250000},
				{group = "tokens_lg", chance = 250000}

			},
			lootChance = 10000000
		},
	},
	weapons = {"dark_jedi_weapons_gen2"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(droid_pvp, "droid_pvp")
