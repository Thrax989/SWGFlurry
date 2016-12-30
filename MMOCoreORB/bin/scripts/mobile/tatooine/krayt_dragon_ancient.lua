krayt_dragon_ancient = Creature:new {
	objectName = "@mob/creature_names:krayt_dragon_ancient",
	socialGroup = "krayt",
	faction = "",
	level = 85,
	chanceHit = 30.0,
	damageMin = 2070,
	damageMax = 4250,
	baseXp = 315000,
	baseHAM = 410000,
	baseHAMmax = 501000,
	armor = 3,
	resists = {195,195,195,195,165,195,195,195,-1},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_bristley",
	hideAmount = 950,
	boneType = "bone_mammal",
	boneAmount = 905,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	scale = 1.5,

	templates = {"object/mobile/krayt_dragon.iff"},
	lootGroups = {
		{
			groups = {
					{group = "krayt_tissue_rare", chance = 3000000},
					{group = "krayt_dragon_common2", chance = 3000000},
					{group = "pearls_flawless", chance = 3000000},
					{group = "clothing_attachments", chance = 1000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "saberhand24", chance = 10000000}
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "saberhand25", chance = 10000000}
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "saberhand26", chance = 10000000}
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "saberhand27", chance = 10000000}
			},
			lootChance = 4000000
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=100"},
		{"creatureareaknockdown","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(krayt_dragon_ancient, "krayt_dragon_ancient")
