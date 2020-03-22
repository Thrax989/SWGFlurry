bh_force_sensitive_crypt_crawler = Creature:new {
	objectName = "@mob/creature_names:force_sensitive_crypt_crawler",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "kun",
	faction = "",
	level = 250,
	chanceHit = 0.9,
	damageMin = 685,
	damageMax = 1080,
	baseXp = 19057,
	baseHAM = 116000,
	baseHAMmax = 119000,
	armor = 2,
	resists = {75,75,40,40,40,40,40,40,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_force_sensitive_crypt_crawler.iff"},
	lootGroups = {
		{
			groups = {
				{group = "tierone", chance = 2500000},
				{group = "tiertwo", chance = 500000},
				{group = "tierthree", chance = 500000},
				{group = "color_crystals", chance = 500000},
				{group = "power_crystals", chance = 1000000},
				{group = "wearables_all", chance = 1000000},
				{group = "weapons_all", chance = 1000000},
				{group = "armor_all", chance = 1000000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "armor_attachments", chance = 1000000}
			},
			lootChance = 4900000
		},
		{
			groups = {
				{group = "tierone", chance = 2500000},
				{group = "tiertwo", chance = 500000},
				{group = "tierthree", chance = 500000},
				{group = "color_crystals", chance = 500000},
				{group = "power_crystals", chance = 1000000},
				{group = "wearables_all", chance = 1000000},
				{group = "weapons_all", chance = 1000000},
				{group = "armor_all", chance = 1000000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "armor_attachments", chance = 1000000}
			},
			lootChance = 4900000
		},
		{
			groups = {
				{group = "tierone", chance = 2500000},
				{group = "tiertwo", chance = 500000},
				{group = "tierthree", chance = 500000},
				{group = "color_crystals", chance = 500000},
				{group = "power_crystals", chance = 500000},
				{group = "power_crystals", chance = 500000},
				{group = "wearables_all", chance = 1000000},
				{group = "weapons_all", chance = 1000000},
				{group = "armor_all", chance = 1000000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "armor_attachments", chance = 1000000}
			},
			lootChance = 4900000
		},
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(bh_force_sensitive_crypt_crawler, "bh_force_sensitive_crypt_crawler")
