tusken_observer = Creature:new {
	objectName = "@mob/creature_names:tusken_observer",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 227,
	chanceHit = 19.75,
	damageMin = 1270,
	damageMax = 2250,
	baseXp = 21630,
	baseHAM = 208000,
	baseHAMmax = 254000,
	armor = 0,
	resists = {185,185,135,200,10,130,145,180,-1},
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
				{group = "tusken_common", chance = 2000000},
				{group = "wearables_scarce", chance = 1500000},
				{group = "bone_armor", chance = 750000},
				{group = "chitin_armor", chance = 750000},
				{group = "armor_attachments", chance = 1000000},
				{group = "clothing_attachments", chance = 1500000},
				{group = "color_crystals", chance = 500000},
				{group = "crystals_premium", chance = 500000},
				{group = "g_named_crystals", chance = 750000},
				{group = "g_named_crystals", chance = 750000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"tusken_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,fencermaster,swordsmanmaster,pikemanmaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(tusken_observer, "tusken_observer")
