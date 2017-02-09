tulrus = Creature:new {
	customName = "Tulrus",
	socialGroup = "mustafar",
	pvpFaction = "self",
	faction = "",
	level = 60,
	chanceHit = 5,
	damageMin = 450,
	damageMax = 600,
	baseXp = 2200,
	baseHAM = 11000,
	baseHAMmax = 15000,
	armor = 1,
	resists = {35,20,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.20,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/tulrus.iff"},
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
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack",""}
	}
}
CreatureTemplates:addCreatureTemplate(tulrus, "tulrus")
