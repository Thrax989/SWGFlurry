  	charon = Creature:new {
	-- objectName = "@mob/creature_names:",
	customName = "Charon (Envoy Of Darkness)",
	socialGroup = "krayt",
	faction = "",
	level = 300,
	chanceHit = 80,
	damageMin = 8825,
	damageMax = 9125,
	baseXp = 3850000,
	baseHAM = 26000000,
	baseHAMmax = 26500000,
	armor = 3,
	resists = {90,90,90,90,90,90,90,90,90},
	meatType = "meat_carnivore",
	meatAmount = 9000,
	hideType = "hide_bristley",
	hideAmount = 4500,
	boneType = "bone_mammal",
	boneAmount = 4000,
	milk = 0,
	tamingChance = 0,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/canyon_krayt_dragon.iff"},
	scale = 0.75;
	lootGroups = {
		{
			groups = {
				{group = "g_named_crystals", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "g_named_crystals", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "g_named_crystals", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "g_named_crystals", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "g_named_crystals", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "charon", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "charon", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "charon", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "charon", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "charon", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "charon", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "charon", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "charon", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "charon", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "charon", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "charon", chance = 10000000}
			},
			lootChance = 10000000
		},
		 {
			groups = {
				{group = "barc_speeder_deed_group", chance = 10000000}
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "charon", chance = 10000000}
			},
			lootChance = 10000000
		 },
			{
			groups = {
				{group = "charon", chance = 10000000}
			},
			lootChance = 10000000
		 },
		{
			groups = {
				{group = "charon", chance = 10000000}
			},
			lootChance = 10000000
		 },
		{
			groups = {
				{group = "charon", chance = 10000000}
			},
			lootChance = 10000000
		 },
		{
			groups = {
				{group = "charon", chance = 10000000}
			},
			lootChance = 10000000
		 },
		},	
	weapons = {},
	conversationTemplate = "",
	attacks = {
 		{"creatureareacombo","stateAccuracyBonus=100"},
 		{"creatureareaknockdown","stateAccuracyBonus=100"},
		{"knockdownattack","KnockdownChance=100"},
		{"creatureareaknockdown","KnockdownChance=100"},
		{"dizzyattack","DizzyChance=100"},
		{"intimidationattack","IntimidationChance=100"},
		{"creatureareapoison","PoisonChance=100"},
		{"strongpoison","PoisonChance=100"},
		{"strongdisease","DiseaseChance=100"},
		{"creatureareaattack",""}
 	}
}

CreatureTemplates:addCreatureTemplate(charon, "charon")
