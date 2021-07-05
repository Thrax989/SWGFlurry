dune_sea_krayt_dragon = Creature:new {
	objectName = "@mob/creature_names:dune_sea_krayt_dragon",
	socialGroup = "krayt",
	faction = "",
	level = 75,
	chanceHit = 40.0,
	damageMin = 4270,
	damageMax = 6250,
	baseXp = 11577,
	baseHAM = 540000,
	baseHAMmax = 640000,
	armor = 3,
	resists = {170,170,170,170,170,170,170,170,125},
	meatType = "meat_carnivore",
	meatAmount = 750,
	hideType = "hide_bristley",
	hideAmount = 500,
	boneType = "bone_mammal",
	boneAmount = 410,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/krayt_dragon_hue.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	scale = 1.0;

	lootGroups = {
		{
	        	groups = {
				{group = "krayt_tissue_rare", chance = 3000000},
				{group = "krayt_dragon_common", chance = 3000000},
				{group = "krayt_pearls_flawless", chance = 3000000},
				{group = "weapons_all", chance = 1000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 4000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack","stateAccuracyBonus=100"},
		{"creatureareaattack","stateAccuracyBonus=100"},
       {"creatureareacombo","stateAccuracyBonus=100"},
		{"creatureareaknockdown","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(dune_sea_krayt_dragon, "dune_sea_krayt_dragon")
