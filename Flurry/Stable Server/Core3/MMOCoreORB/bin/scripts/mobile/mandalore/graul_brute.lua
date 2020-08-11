graul_brute = Creature:new {
	customName = "\\#00ff00<<< Graul Brute >>> \\#ff0000[lvl 250]",
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 300,
	chanceHit = 80.0,
	damageMin = 4000,
	damageMax = 6000,
	baseXp = 16411,
	baseHAM = 30000,
	baseHAMmax = 60000,
	armor = 3,
	resists = {150,150,150,150,150,150,150,150,150},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 1000,
	boneType = "bone_mammal",
	boneAmount = 950,
	milk = 0,
	tamingChance = 0,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/graul_hue.iff"},
	hues = { 8, 9, 10, 11, 12, 13, 14, 15 },
	scale = 1.35,
	lootGroups = {
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 5000000
		}
},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareableeding",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(graul_brute, "graul_brute")
