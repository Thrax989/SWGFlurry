giant_canyon_krayt_dragon_elder = Creature:new {
	-- objectName = "@mob/creature_names:",
	customName = "giant canyon krayt dragon elder",
	socialGroup = "krayt",
	faction = "",
	level = 300,
	chanceHit = 30.0,
	damageMin = 1645,
	damageMax = 3000,
	baseXp = 28549,
	baseHAM = 385000,
	baseHAMmax = 471000,
	armor = 2,
	resists = {170,170,170,170,130,170,170,170,135},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_bristley",
	hideAmount = 870,
	boneType = "bone_mammal",
	boneAmount = 805,
	milk = 0,
	tamingChance = 0,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/canyon_krayt_dragon.iff"},
	scale = 1.2,
	lootGroups = {
		{
	        	groups = {
				{group = "krayt_dragon_common", chance = 6000000},
				{group = "krayt_tissue_uncommon", chance = 3000000},
				{group = "armor_all", chance = 500000},
				{group = "weapons_all", chance = 500000}
			},
			lootChance = 10000000
		},
		{
	        groups = {
				{group = "armor_attachments", chance = 5000000},
				{group = "clothing_attachments", chance = 5000000}
			},
			lootChance = 5000000
		},
		{
	        groups = {
				{group = "junk", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
	        groups = {
				{group = "krayt_tissue_rare", chance = 10000000}
			},
			lootChance = 1500000
		},
		{
	        groups = {
				{group = "pearls_premium", chance = 6000000},
				{group = "pearls_flawless", chance = 4000000}
			},
			lootChance = 4000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareaattack","stateAccuracyBonus=50"},
		{"creatureareaknockdown","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(giant_canyon_krayt_dragon_elder, "giant_canyon_krayt_dragon_elder")
