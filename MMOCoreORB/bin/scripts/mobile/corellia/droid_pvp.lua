droid_pvp = Creature:new {
	customName = "A Force Fuelled Droid",
	socialGroup = "self",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 50.00,
	damageMin = 1000,
	damageMax = 1750,
	baseXp = 10000,
	baseHAM = 100000,
	baseHAMmax = 125000,
	armor = 1,
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
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
        scale = 2.0,
	
		templates = {"object/mobile/c_3po.iff"},
	lootGroups = {
		{
		groups = {
				{group = "armor_attachments", chance = 4500000},
				{group = "clothing_attachments", chance = 4500000},
				{group = "looted_container", chance = 750000},
				{group = "tokens_lg", chance = 250000}

			},
			lootChance = 10000000
		},
		{
		groups = {
				{group = "armor_attachments", chance = 4500000},
				{group = "clothing_attachments", chance = 4500000},
				{group = "looted_container", chance = 750000},
				{group = "tokens_lg", chance = 250000}

			},
			lootChance = 10000000
		},
	},
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(fencermaster,brawlermaster,swordsmanmaster,lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(droid_pvp, "droid_pvp")
