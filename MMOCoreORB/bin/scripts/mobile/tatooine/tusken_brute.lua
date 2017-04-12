tusken_brute = Creature:new {
	objectName = "@mob/creature_names:tusken_brute",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 175,
	chanceHit = 0.41,
	damageMin = 115,
	damageMax = 240,
	baseXp = 3460,
	baseHAM = 8700,
	baseHAMmax = 10700,
	armor = 0,
	resists = {40,0,0,30,-1,30,-1,-1,-1},
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
									{group = "junk", chance = 5000000},
									{group = "armor_attachments", chance = 2500000},
									{group = "clothing_attachments", chance = 2500000}
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
	{
								groups = {
									{group = "tusken_common", chance = 5000000},
									{group = "wearables_common", chance = 2500000},
									{group = "wearables_uncommon", chance = 2500000}
	},
									lootChance = 10000000
	},
	},
	weapons = {"tusken_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,brawlermaster,fencermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(tusken_brute, "tusken_brute")
