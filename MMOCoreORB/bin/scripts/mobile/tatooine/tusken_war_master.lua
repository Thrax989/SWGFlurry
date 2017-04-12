tusken_war_master = Creature:new {
	objectName = "@mob/creature_names:tusken_war_master",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 180,
	chanceHit = 0.53,
	damageMin = 110,
	damageMax = 230,
	baseXp = 5190,
	baseHAM = 10000,
	baseHAMmax = 13000,
	armor = 0,
	resists = {20,20,0,50,-1,30,0,0,-1},
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
	attacks = merge(brawlernovice,marksmannovice,fencermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(tusken_war_master, "tusken_war_master")
