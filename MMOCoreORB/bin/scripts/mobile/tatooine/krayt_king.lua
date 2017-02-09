  	krayt_king = Creature:new {
	--objectName = "@mob/creature_names:",
	customName = "krayt king",
	socialGroup = "krayt",
	faction = "",
	level = 300,
	chanceHit = 50,
	damageMin = 2525,
	damageMax = 3815,
	baseXp = 385000,
	baseHAM = 915000,
	baseHAMmax = 1900000,
	armor = 3,
	resists = {90,90,90,90,90,90,90,90,90},
	meatType = "meat_carnivore",
	meatAmount = 2000,
	hideType = "hide_bristley",
	hideAmount = 1550,
	boneType = "bone_mammal",
	boneAmount = 1275,
	milk = 0,
	tamingChance = 0,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/canyon_krayt_dragon.iff"},
	scale = 3.0;
lootGroups = {
		{
			groups = {
				{group = "armor_attachments", chance = 5000000},
				{group = "clothing_attachments", chance = 5000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 5000000},
				{group = "clothing_attachments", chance = 5000000}
			},
			lootChance = 10000000
		},
		 {
			groups = {
				{group = "nge1", chance = 10000000}
			},
			lootChance = 1000000
		},
		 {
			groups = {
				{group = "barc_speeder_deed_group", chance = 10000000}
			},
			lootChance = 100000
		},
		 {
			groups = {
				{group = "nge2", chance = 10000000}
			},
			lootChance = 1000000
		},
		 {
			groups = {
				{group = "nge3", chance = 10000000}
			},
			lootChance = 1000000
		},
		 {
			groups = {
				{group = "krayt_dragon_common", chance = 10000000}
			},
			lootChance = 10000000
		},
		 {
			groups = {
				{group = "krayt_dragon_common", chance = 10000000}
			},
			lootChance = 10000000
		},
		 {
			groups = {
				{group = "krayt_dragon_common", chance = 10000000}
			},
			lootChance = 10000000
		},
		 {
			groups = {
				{group = "krayt_dragon_common", chance = 10000000}
			},
			lootChance = 10000000
		},
		 {
			groups = {
				{group = "krayt_dragon_common", chance = 10000000}
			},
			lootChance = 10000000
		},
		 {
			groups = {
				{group = "g_named_crystals", chance = 10000000}
			},
			lootChance = 5000000
		},
				 {
			groups = {
				{group = "saberhand24", chance = 10000000}
			},
			lootChance = 1500000
		},
				 {
			groups = {
				{group = "saberhand25", chance = 10000000}
			},
			lootChance = 1500000
		},
				 {
			groups = {
				{group = "saberhand27", chance = 10000000}
			},
			lootChance = 5000000
		},
				 {
			groups = {
				{group = "saberhand26", chance = 10000000}
			},
			lootChance = 1500000
		},
		},
	weapons = {},
	conversationTemplate = "",
	attacks = {
 		{"creatureareacombo","stateAccuracyBonus=50"},
 		{"creatureareaknockdown","stateAccuracyBonus=50"},
		{"knockdownattack","KnockdownChance=50"},
		{"creatureareaknockdown","KnockdownChance=50"},
		{"dizzyattack","DizzyChance=50"},
		{"stunattack","StunChance=50"},
		{"mildpoison","PoisonChance=50"},
		{"intimidationattack","IntimidationChance=50"},
		{"mediumpoison","PoisonChance=50"},
		{"creatureareapoison","PoisonChance=50"},
		{"mediumdisease","DiseaseChance=50"},
		{"milddisease","DiseaseChance=50"},
		{"strongpoison","PoisonChance=50"},
		{"strongdisease","DiseaseChance=50"},
		{"creatureareaattack",""}
 	}
}

CreatureTemplates:addCreatureTemplate(krayt_king, "krayt_king")
