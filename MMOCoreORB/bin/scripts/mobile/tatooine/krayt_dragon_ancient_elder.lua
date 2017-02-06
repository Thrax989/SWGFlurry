krayt_dragon_ancient_elder = Creature:new {
 	objectName = "@mob/creature_names:",
 	customName = "krayt dragon ancient elder",
 	socialGroup = "krayt",
 	faction = "",
 	level = 300,
 	chanceHit = 30.0,
 	damageMin = 2270,
 	damageMax = 4250,
 	baseXp = 285490,
 	baseHAM = 410000,
 	baseHAMmax = 501000,
 	armor = 0,
 	resists = {75,75,75,75,75,75,75,75,25},
 	meatType = "meat_carnivore",
 	meatAmount = 1000,
 	hideType = "hide_bristley",
 	hideAmount = 950,
 	boneType = "bone_mammal",
 	boneAmount = 905,
 	milk = 0,
 	tamingChance = 0,
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
				{group = "krayt_tissue_rare", chance = 2000000},
				{group = "krayt_dragon_common", chance = 2500000},
				{group = "pearls_flawless", chance = 1500000},
				{group = "armor_all", chance = 2000000},
				{group = "weapons_all", chance = 2000000},
			},
			lootChance = 10000000
		}
	},
 	weapons = {},
 	conversationTemplate = "",
 	attacks = {
 		{"creatureareacombo","stateAccuracyBonus=100"},
 		{"creatureareaknockdown","stateAccuracyBonus=100"},
		{"knockdownattack","KnockdownChance=100"},
		{"creatureareaknockdown","KnockdownChance=100"},
		{"dizzyattack","DizzyChance=100"},
		{"stunattack","StunChance=100"},
		{"mildpoison","PoisonChance=100"},
		{"intimidationattack","IntimidationChance=100"},
		{"mediumpoison","PoisonChance=100"},
		{"creatureareapoison","PoisonChance=100"},
		{"mediumDisease","DiseaseChance=100"},
		{"mildDisease","DiseaseChance=100"},
		{"strongpoison","PoisonChance=100"},
		{"strongDisease","DiseaseChance=100"},
		{"creatureareaattack",""}
 	}
 }
 
 CreatureTemplates:addCreatureTemplate(krayt_dragon_ancient_elder, "krayt_dragon_ancient_elder")
