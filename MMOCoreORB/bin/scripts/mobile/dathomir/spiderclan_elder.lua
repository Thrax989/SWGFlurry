spiderclan_elder = Creature:new {
	objectName = "@mob/creature_names:spider_nightsister_elder",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "spider_nightsister",
	faction = "spider_nightsister",
	level = 300,
	chanceHit = 27.25,
	damageMin = 1520,
	damageMax = 2750,
	baseXp = 26654,
	baseHAM = 321000,
	baseHAMmax = 392000,
	armor = 0,
	resists = {135,135,135,200,200,200,200,200,-1},
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

	templates = {"object/mobile/dressed_dathomir_spider_nightsister_elder.iff"},
	lootGroups = {
		{
			groups = {
				{group = "axkva_min",  chance = 100000},
				{group = "crystals_premium",  chance = 1800000},
				{group = "color_crystals",  chance = 500000},
				{group = "armor_attachments", chance = 1200000},
				{group = "clothing_attachments", chance = 1200000},
				{group = "melee_weapons",  chance = 1700000},
				{group = "pistols",  chance = 1000000},
				{group = "rifles",  chance = 1000000},
				{group = "carbines",  chance = 1000000},
				{group = "wearables_scarce",  chance = 500000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(spiderclan_elder, "spiderclan_elder")
