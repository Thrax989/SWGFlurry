dune_sea_queen = Creature:new {
--	customName = "Dracona 'Queen of the Dune Sea'",
  objectName = "@mob/creature_names:dune_sea_krayt_queen",
	socialGroup = "krayt",
	faction = "",
	level = 85,
	chanceHit = 30.0,
	damageMin = 2270,
	damageMax = 4250,
	baseXp = 28549,
	baseHAM = 410000,
	baseHAMmax = 501000,
	armor = 3,
	resists = {195,195,195,195,165,195,195,195,145},
	meatType = "meat_carnivore",
	meatAmount = 1500,
	hideType = "hide_bristley",
	hideAmount = 1500,
	boneType = "bone_mammal",
	boneAmount = 1500,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED + INTERESTING,
	diet = CARNIVORE,
	scale = 3.0,

	templates = {"object/mobile/krayt_dragon_hue.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	lootGroups = {
		{
			groups = {
				{group = "krayt_pearls_flawless", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "krayt_pearls_flawless", chance = 10000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "krayt_tissue_rare", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
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
			lootChance = 5000000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 500000
		},
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
		{"creatureareacombo","stateAccuracyBonus=100"},
    {"creatureareapoison","PoisonChance=5"},
		{"creatureareaknockdown","stateAccuracyBonus=100"},
		{"posturedownattack","stateAccuracyBonus=100"},
		{"creatureareacombo","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(dune_sea_queen, "dune_sea_queen")
