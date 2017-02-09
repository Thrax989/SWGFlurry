battlefield_foreman = Creature:new {
	customName = "Battlefield Foreman",
	socialGroup = "self",
	pvpFaction = "",
	faction = "",
	level = 110,
	chanceHit = 5,
	damageMin = 1250,
	damageMax = 1750,
	baseXp = 7800,
	baseHAM = 23450,
	baseHAMmax = 27752,
	armor = 2,
	resists = {40,40,25,25,30,30,40,25,-1},
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

	templates = {"object/mobile/som/battlefield_foreman.iff"},
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
	weapons = {"pirate_weapons_light"},
	conversationTemplate = "",
	attacks = merge(marksmannovice,brawlernovice)
}

CreatureTemplates:addCreatureTemplate(battlefield_foreman, "battlefield_foreman")
