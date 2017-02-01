volcano_cyborg_lt = Creature:new {
	customName = "Volcano cyborg",
	socialGroup = "geonosian",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 50,
	damageMin = 1550,
	damageMax = 2000,
	baseXp = 5335,
	baseHAM = 159000,
	baseHAMmax = 183000,
	armor = 3,
	resists = {55,55,70,45,75,80,55,45,-1},
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
	creatureBitmask = PACK + STALKER,
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
