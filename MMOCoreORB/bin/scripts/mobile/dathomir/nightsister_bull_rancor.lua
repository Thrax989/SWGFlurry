nightsister_bull_rancor = Creature:new {
	objectName = "@mob/creature_names:nightsister_bull_rancor",
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 65,
	chanceHit = 0.6,
	damageMin = 455,
	damageMax = 620,
	baseXp = 6288,
	baseHAM = 11000,
	baseHAMmax = 14000,
	armor = 1,
	resists = {15,160,15,200,200,200,15,15,-1},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 900,
	boneType = "bone_mammal",
	boneAmount = 850,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 11,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/bull_rancor.iff"},
	hues = { 8, 9, 10, 11, 12, 13, 14, 15 },
	scale = 1.1,
	lootGroups = {
		{
			groups = {
				{group = "rancor_common", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "armor_all", chance = 10000000},
			},
			lootChance = 3000000
		},
		{
			groups = {
				{group = "wearables_all", chance = 10000000},
			},
			lootChance = 1500000
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareadisease",""},
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(nightsister_bull_rancor, "nightsister_bull_rancor")
