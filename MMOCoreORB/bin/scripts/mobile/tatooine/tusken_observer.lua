tusken_observer = Creature:new {
	objectName = "@mob/creature_names:tusken_observer",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 250,
	chanceHit = 15.00,
	damageMin = 1000,
	damageMax = 2000,
	baseXp = 21630,
	baseHAM = 100000,
	baseHAMmax = 150000,
	armor = 1,
	resists = {60,60,60,60,60,60,60,60,30},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ENEMY + ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	templates = {"object/mobile/tusken_raider.iff"},
	lootGroups = {
	        {	
		groups = {
			{group = "tusken_common", chance = 5000000},
			{group = "wearables_scarce", chance = 4000000},
			{group = "color_crystals", chance = 500000},
			{group = "crystals_premium", chance = 500000}
		},
		lootChance = 10000000
	},
	{
	        groups = {
			{group = "armor_attachments", chance = 5000000},
			{group = "clothing_attachments", chance = 5000000}
	},
		lootChance = 10000000
	},
	{
	        groups = {
			{group = "junk", chance = 10000000}
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

CreatureTemplates:addCreatureTemplate(tusken_observer, "tusken_observer")
