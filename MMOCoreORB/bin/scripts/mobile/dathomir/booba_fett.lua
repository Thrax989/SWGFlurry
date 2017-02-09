booba_fett = Creature:new {
	customName = "Booba Fett",
	socialGroup = "mandalorian",
	faction = "",
	level = 300,
	chanceHit = 95.00,
	damageMin = 3250,
	damageMax = 4000,
	baseXp = 30000,
	baseHAM = 300000,
	baseHAMmax = 400000,
	armor = 0,
	resists = {95,95,95,95,95,95,100,95,50},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ENEMY + ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.55,

	templates = {"object/mobile/boba_fett.iff"},
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
	weapons = {"rebel_weapons_heavy"},
 	conversationTemplate = "",
	attacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster,pistoleermaster,commandomaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(booba_fett, "booba_fett")
