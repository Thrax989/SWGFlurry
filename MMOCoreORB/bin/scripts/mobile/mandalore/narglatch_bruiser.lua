narglatch_bruiser = Creature:new {
	customName = "\\#00ff00<<< Narglatch Bruiser >>> \\#ff0000[lvl 200]",
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 200,
	chanceHit = 80.0,
	damageMin = 5000,
	damageMax = 6500,
	baseXp = 10000,
	baseHAM = 20000,
	baseHAMmax = 40000,
	armor = 3,
	resists = {20,20,20,20,20,20,20,20,20},
	meatType = "meat_carnivore",
	meatAmount = 65,
	hideType = "hide_bristley",
	hideAmount = 35,
	boneType = "bone_mammal",
	boneAmount = 35,
	milk = 0,
	tamingChance = 0,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/narglatch_female_hue.iff"},
	hues = { 24, 25, 26, 27, 28, 29, 30, 31 },
	scale = 1.5,
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
		{"posturedownattack","stateAccuracyBonus=100"},
		{"creatureareacombo","stateAccuracyBonus=100"},
		{"intimidationattack",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(narglatch_bruiser, "narglatch_bruiser")
