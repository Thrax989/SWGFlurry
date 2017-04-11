tusken_witch_doctor = Creature:new {
	objectName = "@mob/creature_names:tusken_witch_doctor",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 250,
	chanceHit = 10.00,
	damageMin = 1000,
	damageMax = 1500,
	baseXp = 19201,
	baseHAM = 100000,
	baseHAMmax = 150000,
	armor = 1,
	resists = {40,40,40,40,40,40,40,40,20},
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
	attacks = merge(brawlernovice,marksmannovice,fencermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(tusken_witch_doctor, "tusken_witch_doctor")
