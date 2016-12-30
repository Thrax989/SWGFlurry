xandank = Creature:new {
	customName = "Xandank",
	socialGroup = "mustafar",
	pvpFaction = "",
	faction = "",
	level = 50,
	chanceHit = 5,
	damageMin = 450,
	damageMax = 600,
	baseXp = 1675,
	baseHAM = 8500,
	baseHAMmax = 11000,
	armor = 0,
	resists = {10,10,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/som/xandank.iff"},
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
		{"creatureareadisease",""},
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(xandank, "xandank")
