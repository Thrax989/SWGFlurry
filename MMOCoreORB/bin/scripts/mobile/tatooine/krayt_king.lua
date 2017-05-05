  	krayt_king = Creature:new {
	--objectName = "@mob/creature_names:",
	customName = "Krayt King",
	socialGroup = "krayt",
	faction = "",
	level = 300,
	chanceHit = 50,
	damageMin = 2250,
	damageMax = 3550,
	baseXp = 385000,
	baseHAM = 900000,
	baseHAMmax = 1000000,
	armor = 3,
	resists = {90,90,90,90,90,90,90,90,60},
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

	templates = {"object/mobile/krayt_dragon.iff"},
	scale = 3.0;
  lootGroups = {
		 {
			groups = {
        			{group = "pearls_flawless", chance = 5000000},
        			{group = "armor_attachments", chance = 2500000},
        			{group = "clothing_attachments", chance = 2500000}
   	},
      			lootChance = 10000000
   	},
		 {
			groups = {
        			{group = "pearls_flawless", chance = 5000000},
        			{group = "armor_attachments", chance = 2500000},
        			{group = "clothing_attachments", chance = 2500000}
   	},
      			lootChance = 10000000
   	},
		 {
			groups = {
        			{group = "pearls_flawless", chance = 5000000},
        			{group = "armor_attachments", chance = 2500000},
        			{group = "clothing_attachments", chance = 2500000}
   	},
      			lootChance = 10000000
   	},
   	 {
			groups = {
        			{group = "pearls_flawless", chance = 5000000},
        			{group = "armor_attachments", chance = 2500000},
        			{group = "clothing_attachments", chance = 2500000}
   	},
      			lootChance = 10000000
   	},
		 {
			groups = {
				{group = "krayt_tissue_rare", chance = 10000000}
			},
			lootChance = 10000000
		},
		 {
			groups = {
				{group = "krayt_tissue_rare", chance = 10000000}
			},
			lootChance = 10000000
		},
		 {
			groups = {
				{group = "krayt_tissue_rare", chance = 10000000}
			},
			lootChance = 10000000
		},
		 {
			groups = {
				{group = "krayt_tissue_rare", chance = 10000000}
			},
			lootChance = 10000000
		},
		 {
			groups = {
				{group = "g_named_crystals", chance = 10000000}
			},
			lootChance = 10000000
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
