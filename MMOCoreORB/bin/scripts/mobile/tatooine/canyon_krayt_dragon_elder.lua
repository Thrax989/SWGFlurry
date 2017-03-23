canyon_krayt_dragon_elder = Creature:new {
	-- objectName = "@mob/creature_names:",
	customName = "canyon crayt dragon elder",
	socialGroup = "krayt",
	faction = "",
	level = 275,
	chanceHit = 27.25,
	damageMin = 1520,
	damageMax = 2750,
	baseXp = 26356,
	baseHAM = 321000,
	baseHAMmax = 392000,
	armor = 2,
	resists = {160,160,160,160,120,160,160,160,135},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_bristley",
	hideAmount = 750,
	boneType = "bone_mammal",
	boneAmount = 675,
	milk = 0,
	tamingChance = 0,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/canyon_krayt_dragon.iff"},
	scale = 0.9,
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
				{group = "pearls_premium", chance = 10000000}
			},
			lootChance = 2000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareaattack","stateAccuracyBonus=50"},
		{"stunattack","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(canyon_krayt_dragon_elder, "canyon_krayt_dragon_elder")
