worldboss_1 = Creature:new {
	customName = "Draco",
	socialGroup = "krayt",
	faction = "",
	level = 300,
	chanceHit = 35.0,
	damageMin = 2500,
	damageMax = 6000,
	baseXp = 28549,
	baseHAM = 950000,
	baseHAMmax = 1000000,
	armor = 3,
	resists = {165,165,165,165,165,165,165,165,165},
	meatType = "meat_carnivore",
	meatAmount = 1500,
	hideType = "hide_bristley",
	hideAmount = 1500,
	boneType = "bone_mammal",
	boneAmount = 1500,
	milk = 0,
	tamingChance = 0,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	scale = 3.0,

	templates = {"object/mobile/krayt_dragon_hue.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	lootGroups = {
		{
			groups = {
				{group = "krayt_tissue_rare", chance = 10000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "krayt_dragon_common", chance = 10000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "krayt_pearls", chance = 10000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "armor_all", chance = 10000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "weapons_all", chance = 10000000},
			},
			lootChance = 2500000
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=100"},
		{"creatureareaknockdown","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(worldboss_1, "worldboss_1")
