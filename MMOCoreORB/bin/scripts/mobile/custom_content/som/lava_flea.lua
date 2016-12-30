lava_flea = Creature:new {
	customName = "Lava Flea",
	socialGroup = "mustafar",
	pvpFaction = "",
	faction = "",
	level = 50,
	chanceHit = 5,
	damageMin = 450,
	damageMax = 500,
	baseXp = 1175,
	baseHAM = 4500,
	baseHAMmax = 7000,
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
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/lava_flea.iff"},
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

CreatureTemplates:addCreatureTemplate(lava_flea, "lava_flea")
