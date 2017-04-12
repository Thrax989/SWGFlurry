tusken_fighter = Creature:new {
	objectName = "@mob/creature_names:tusken_soldier",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 170,
	chanceHit = 0.36,
	damageMin = 150,
	damageMax = 260,
	baseXp = 2730,
	baseHAM = 7700,
	baseHAMmax = 9400,
	armor = 0,
	resists = {20,20,0,30,-1,30,-1,-1,-1},
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
	attacks = merge(marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(tusken_fighter, "tusken_fighter")
