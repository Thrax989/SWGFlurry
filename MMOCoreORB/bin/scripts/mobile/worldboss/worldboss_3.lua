worldboss_3 = Creature:new {
	customName = "Mutant Acklay Guardian",
	socialGroup = "",
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

	templates = {"object/mobile/mutant_acklay.iff"},
	lootGroups = {
		{
			groups = {
				{group = "weapons_all", chance = 10000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "weapons_all", chance = 10000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "weapons_all", chance = 10000000},
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
		{"creatureareaknockdown","stateAccuracyBonus=100"},
		{"posturedownattack","stateAccuracyBonus=100"},
		{"creatureareacombo","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(worldboss_3, "worldboss_3")
