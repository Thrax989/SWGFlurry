rancor_guard = Creature:new {
	customName = "\\#00ff00<<< Rancor Guard >>> \\#ff0000[lvl 300]",
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 300,
	chanceHit = 50.0,
	damageMin = 570,
	damageMax = 850,
	baseXp = 8500,
	baseHAM = 13000,
	baseHAMmax = 16000,
	armor = 1,
	resists = {40,170,40,200,200,200,40,40,10},
	meatType = "meat_carnivore",
	meatAmount = 880,
	hideType = "hide_leathery",
	hideAmount = 750,
	boneType = "bone_mammal",
	boneAmount = 670,
	milk = 0,
	tamingChance = 0,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/bull_rancor.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	scale = 1.0,
	lootGroups = {
		{
			groups = {
				{group = "rancor_common", chance = 5000000},
				{group = "armor_all", chance = 3000000},
				{group = "weapons_all", chance = 500000},
				{group = "wearables_all", chance = 1500000}
			},
			lootChance = 2780000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack",""},
		{"creatureareaknockdown",""}
	}
}

CreatureTemplates:addCreatureTemplate(rancor_guard, "rancor_guard")
