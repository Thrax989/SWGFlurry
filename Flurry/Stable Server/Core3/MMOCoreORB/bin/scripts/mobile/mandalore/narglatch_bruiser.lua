narglatch_bruiser = Creature:new {
	customName = "\\#00ff00<<< Narglatch Bruiser >>> \\#ff0000[lvl 200]",
	socialGroup = "narglatch",
	faction = "",
	level = 200,
	chanceHit = 50.0,
	damageMin = 4000,
	damageMax = 8000,
	baseXp = 10000,
	baseHAM = 5000,
	baseHAMmax = 6000,
	armor = 2,
	resists = {10,10,10,10,10,10,10,10,10},
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
