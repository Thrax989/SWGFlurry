tusken_captain = Creature:new {
	objectName = "@mob/creature_names:tusken_captain",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 75,
	chanceHit = 0.44,
	damageMin = 145,
	damageMax = 200,
	baseXp = 4006,
	baseHAM = 9300,
	baseHAMmax = 11300,
	armor = 0,
	resists = {30,30,30,40,-1,40,30,30,-1},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/tusken_raider.iff"},
	lootGroups = {
		{
		groups = {
			{group = "junk", chance = 1000000},
			{group = "tusken_common", chance = 4000000},
			{group = "wearables_common", chance = 1000000},
			{group = "wearables_uncommon", chance = 500000},
			{group = "armor_attachments", chance = 500000},
			{group = "clothing_attachments", chance = 500000},
			{group = "color_crystals", chance = 500000}
	},
			lootChance = 10000000
	},
	{
                groups = {
                	{group = "junk", chance = 5000000},
                	{group = "armor_attachments", chance = 2500000},
                	{group = "clothing_attachments", chance = 2500000}
	},
                	lootChance = 10000000
	},
	},
	weapons = {"tusken_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,brawlermaster,fencermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(tusken_captain, "tusken_captain")
