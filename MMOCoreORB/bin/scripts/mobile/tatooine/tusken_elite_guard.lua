tusken_elite_guard = Creature:new {
	objectName = "@mob/creature_names:tusken_elite_guard",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 180,
	chanceHit = 0.46,
	damageMin = 165,
	damageMax = 240,
	baseXp = 4370,
	baseHAM = 9600,
	baseHAMmax = 11800,
	armor = 0,
	resists = {30,30,30,30,30,30,30,30,-1},
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

CreatureTemplates:addCreatureTemplate(tusken_elite_guard, "tusken_elite_guard")
