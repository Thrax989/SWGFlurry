volcano_cyborg_lt = Creature:new {
	customName = "Volcano cyborg",
	socialGroup = "geonosian",
	pvpFaction = "",
	faction = "",
	level = 150,
	chanceHit = 35.00,
	damageMin = 520,
	damageMax = 1750,
	baseXp = 15000,
	baseHAM = 150000,
	baseHAMmax = 175000,
	armor = 0,
	resists = {50,50,50,50,50,50,50,50,50},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 1,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/volcano_cyborg_lt.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 5000000},
				{group = "armor_all", chance = 2500000},
				{group = "weapons_all", chance = 2500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "wearables_all", chance = 5000000},
				{group = "loot_kit_parts", chance = 2500000},
				{group = "tailor_components", chance = 2500000}
			},
			lootChance = 10000000
		},
		},
	weapons = {"st_bombardier_weapons"},
	conversationTemplate = "",
	attacks = merge(commandomaster)
}

CreatureTemplates:addCreatureTemplate(volcano_cyborg_lt, "volcano_cyborg_lt")
