sr = Creature:new {
	objectName = "@mob/creature_names:sickle_rasp",
	socialGroup = "rasp",
	faction = "",
	level = 85,
	chanceHit = 75,
	damageMin = 5850,
	damageMax = 6750,
	baseXp = 500000,
	baseHAM = 575000,
	baseHAMmax = 585000,
	armor = 3,
	resists = {195,195,195,195,195,195,195,195,195},
	meatType = "meat_avian",
	meatAmount = 5000,
	hideType = "",
	hideAmount = 0,
	boneType = "bone_avian",
	boneAmount = 5000,
	milkType = "",
	milk = 0,
	tamingChance = 0.25,
	ferocity = 30,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/horned_rasp_hue.iff"},
	hues = { 24, 25, 26, 27, 28, 29, 30, 31 },
	lootGroups = {
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000},
				},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
       				{group = "armor_attachments", chance = 5000000},
			},
			lootChance = 5000000
		},    
  	{
			groups = {
				{group = "chemistry_component_advanced", chance = 5000000},
				{group = "weapon_component_advanced", chance = 5000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "chemistry_component_advanced", chance = 5000000},
				{group = "weapon_component_advanced", chance = 5000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "fire_breathing_spider", chance = 3500000},
				{group = "geonosian_cubes", chance = 4500000},
				{group = "kimogila_common", chance = 1000000},
				{group = "krayt_tissue_rare", chance = 1000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "fire_breathing_spider", chance = 3500000},
				{group = "geonosian_cubes", chance = 4500000},
				{group = "kimogila_common", chance = 1000000},
				{group = "krayt_tissue_rare", chance = 1000000},
			},
			lootChance = 10000000
 		},
		{     
			groups = {
				{group = "tierone", chance = 5000000},
				{group = "tiertwo", chance = 2500000},
				{group = "tierthree", chance = 1000000},
				{group = "tierdiamond", chance = 1500000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierone", chance = 5000000},
				{group = "tiertwo", chance = 2500000},
				{group = "tierthree", chance = 1000000},
				{group = "tierdiamond", chance = 1500000},
			},
			lootChance = 10000000
			}
		},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareadisease","DiseaseChance=5"},    
		{"creatureareapoison","PoisonChance=5"},
 		{"creatureareacombo","stateAccuracyBonus=50"},
 		{"creatureareaknockdown","stateAccuracyBonus=50"},
		{"creatureareaknockdown","KnockdownChance=50"},
		{"dizzyattack","DizzyChance=50"},
		{"intimidationattack","IntimidationChance=50"}

 	}
}

CreatureTemplates:addCreatureTemplate(sr, "sr")