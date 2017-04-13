tusken_carnage_champion = Creature:new {
	objectName = "@mob/creature_names:tusken_fort_tusken_champion",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 200,
	chanceHit = 5.00,
	damageMin = 200,
	damageMax = 400,
	baseXp = 11015,
	baseHAM = 80000,
	baseHAMmax = 100000,
	armor = 0,
	resists = {40,40,10,30,-1,30,-1,-1,-1},
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
	creatureBitmask = PACK + HERD + KILLER,
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

CreatureTemplates:addCreatureTemplate(tusken_carnage_champion, "tusken_carnage_champion")
