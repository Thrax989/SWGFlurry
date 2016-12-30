kubaza_beetle = Creature:new {
	customName = "Kubaza Beetle",
	socialGroup = "mustafar",
	pvpFaction = "",
	faction = "",
	level = 70,
	chanceHit = 5,
	damageMin = 550,
	damageMax = 600,
	baseXp = 1385,
	baseHAM = 6500,
	baseHAMmax = 8000,
	armor = 0,
	resists = {10,10,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/kubaza_beetle.iff"},
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

CreatureTemplates:addCreatureTemplate(kubaza_beetle, "kubaza_beetle")
