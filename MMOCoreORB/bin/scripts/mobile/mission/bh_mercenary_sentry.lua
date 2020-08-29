bh_mercenary_sentry = Creature:new {
	objectName = "@mob/creature_names:geonosian_human_security_force",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "geonosian",
	faction = "",
	level = 66,
	chanceHit = 0.65,
	damageMin = 470,
	damageMax = 650,
	baseXp = 6380,
	baseHAM = 112000,
	baseHAMmax = 114000,
	armor = 1,
	resists = {60,60,60,60,60,60,60,60,-1},
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

	templates = {
		"object/mobile/dressed_noble_human_male_03.iff"},
	lootGroups = {
		{
			groups = {
				{group = "tierone", chance = 2500000},
				{group = "tiertwo", chance = 500000},
				{group = "tierthree", chance = 500000},
				{group = "color_crystals", chance = 500000},
				{group = "power_crystals", chance = 1000000},
				{group = "nge_all", chance = 1000000},
				{group = "weapons_all", chance = 1000000},
				{group = "armor_all", chance = 1000000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "armor_attachments", chance = 1000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierone", chance = 2500000},
				{group = "tiertwo", chance = 500000},
				{group = "tierthree", chance = 500000},
				{group = "color_crystals", chance = 500000},
				{group = "power_crystals", chance = 1000000},
				{group = "tierdiamond", chance = 1000000},
				{group = "weapons_all", chance = 1000000},
				{group = "armor_all", chance = 1000000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "armor_attachments", chance = 1000000}
			},
			lootChance = 4320000
		},
		{
			groups = {
				{group = "tierone", chance = 2500000},
				{group = "tiertwo", chance = 500000},
				{group = "tierthree", chance = 500000},
				{group = "color_crystals", chance = 500000},
				{group = "power_crystals", chance = 500000},
				{group = "power_crystals", chance = 500000},
				{group = "nge_all", chance = 1000000},
				{group = "weapons_all", chance = 1000000},
				{group = "armor_all", chance = 1000000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "armor_attachments", chance = 1000000}
			},
			lootChance = 4320000
		}
	},
	weapons = {"geonosian_mercenary_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster,pistoleermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(bh_mercenary_sentry, "bh_mercenary_sentry")
