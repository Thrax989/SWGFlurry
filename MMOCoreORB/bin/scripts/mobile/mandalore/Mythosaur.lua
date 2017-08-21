mythosaur = Creature:new {
	objectName = "",
	customName = "Mythosaur",
	socialGroup = "kimogila",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 30.0,
	damageMin = 2270,
	damageMax = 4250,
	baseXp = 25000,
	baseHAM = 410000,
	baseHAMmax = 501000,
	armor = 2,
	resists = {195,195,195,195,165,195,195,195,135},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 1000,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
    scale = 1.5,
	templates = {"object/mobile/giant_dune_kimogila.iff"},
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
			lootChance = 2500000
		},
		{
	        groups = {
				{group = "pearls_premium", chance = 4000000},
				{group = "pearls_flawless", chance = 6000000}
			},
			lootChance = 4000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=100"},
		{"creatureareaknockdown","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(mythosaur, "mythosaur")
