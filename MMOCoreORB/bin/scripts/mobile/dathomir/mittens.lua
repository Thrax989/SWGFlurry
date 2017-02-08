  	mittens = Creature:new {
	-- objectName = "@mob/creature_names:",
	customName = "mittens",
	socialGroup = "vir_vur",
	faction = "",
	level = 85,
	chanceHit = 75,
	damageMin = 5850,
	damageMax = 6750,
	baseXp = 500000,
	baseHAM = 575000,
	baseHAMmax = 585000,
	armor = 0,
	resists = {195,195,195,195,195,195,195,195,195},
	meatType = "meat_avian",
	meatAmount = 5000,
	hideType = "hide_wooly",
	hideAmount = 5000,
	boneType = "bone_mammal",
	boneAmount = 5000,
	milkType = "milk_domesticated",
	milk = 2500,
	tamingChance = 0.25,
	ferocity = 30,
	pvpBitmask = ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/vir_vur.iff"},
	scale = 1.75;
lootGroups = {
		 {
			groups = {
				{group = "nge1", chance = 10000000}
			},
			lootChance = 4500000
		},
		 {
			groups = {
				{group = "barc_speeder_deed_group", chance = 10000000}
			},
			lootChance = 150000
		},
		 {
			groups = {
				{group = "nge2", chance = 10000000}
			},
			lootChance = 4500000
		},
		 {
			groups = {
				{group = "nge3", chance = 10000000}
			},
			lootChance = 4500000
		},
		},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison","PoisonChance=5"},
		{"creatureareadisease","DiseaseChance=5"},
 		{"creatureareacombo","stateAccuracyBonus=50"},
 		{"creatureareaknockdown","stateAccuracyBonus=50"},
		{"creatureareaknockdown","KnockdownChance=50"},
		{"dizzyattack","DizzyChance=50"},
		{"intimidationattack","IntimidationChance=50"}

 	}
}

CreatureTemplates:addCreatureTemplate(mittens, "mittens")
