sher_kar_youngling = Creature:new {
	customName = "Sher Kar Youngling",
	socialGroup = "geonosian_creature",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 85,
	damageMin = 1570,
	damageMax = 5550,
	specialDamageMult = 25,
	baseXp = 3005490,
	baseHAM = 1040000,
	baseHAMmax = 1629000,
	armor = 1,
	resists = {20,20,20,20,20,20,20,20,20},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 0.1,

	templates = {"object/mobile/som/sher_kar.iff"},
	lootGroups = {
		{
			groups = {
				{group = "saberhand24", chance = 4000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "av_21_pp", chance = 1000000}
			},
			lootChance = 500000
		 },
		{
			groups = {
				{group = "saberhand25", chance = 4000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000}
			},
			lootChance = 10000000
		},
		 {
			groups = {
				{group = "holocron_light", chance = 5000000},
				{group = "holocron_dark", chance = 5000000}
			},
			lootChance = 10000000
		},
		},
	weapons = {"creature_spit_heavy_flame"},
	reactionStf = "@npc_reaction/slang",
	attacks = {
		{"creatureareacombo","StateAccuracyBonus=100"},
		{"creatureareaknockdown","StateAccuracyBonus=100"},
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
		{"creatureareaattack","StateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(sher_kar_youngling, "sher_kar_youngling")
