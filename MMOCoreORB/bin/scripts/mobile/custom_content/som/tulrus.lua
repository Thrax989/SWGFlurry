tulrus = Creature:new {
	customName = "Tulrus",
	socialGroup = "mustafar",
	pvpFaction = "",
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
				{group = "armor_all", chance = 3500000},
				{group = "weapons_all", chance = 4000000},
				{group = "wearables_all", chance = 2500000}
			},
			lootChance = 2300000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack",""}
	}
}
CreatureTemplates:addCreatureTemplate(tulrus, "tulrus")
