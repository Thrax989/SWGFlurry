tusken_executioner = Creature:new {
	objectName = "@mob/creature_names:tusken_executioner",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 275,
	chanceHit = 25.0,
	damageMin = 1500,
	damageMax = 2500,
	specialDamageMult = 2.0,
	baseXp = 25167,
	baseHAM = 350000,
	baseHAMmax = 400000,
	armor = 2,
	resists = {95,95,95,95,95,95,95,95,75},
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
	templates = {"object/mobile/tusken_raider.iff"},
	lootGroups = {
		{
	        groups = {
			{group = "tusken_common", chance = 5000000},
			{group = "wearables_scarce", chance = 4000000},
			{group = "color_crystals", chance = 500000},
			{group = "pearls_flawless", chance = 500000}
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
			{group = "nge2", chance = 10000000}
	},
			lootChance = 5000000
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

CreatureTemplates:addCreatureTemplate(tusken_executioner, "tusken_executioner")
