vsh = Creature:new {
	objectName = "@mob/creature_names:",
	customName = "a vicious slice hound",
	socialGroup = "slice_hound",
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
	meatType = "meat_carnivore",
	meatAmount = 5000,
	hideType = "hide_bristley",
	hideAmount = 5000,
	boneType = "bone_mammal",
	boneAmount = 5000,
	milkType = "",
	milk = 0,
	tamingChance = 0.25,
	ferocity = 30,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/corellian_slice_hound.iff"},
	controlDeviceTemplate = "object/intangible/pet/corellian_slice_hound_hue.iff",

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
		{"creatureareaknockdown","KnockdownChance=50"},    
		{"dizzyattack","DizzyChance=50"},    
		{"creatureareapoison","PoisonChance=5"},
		{"creatureareadisease","DiseaseChance=5"},
 		{"creatureareacombo","stateAccuracyBonus=50"},
 		{"creatureareaknockdown","stateAccuracyBonus=50"},
		{"intimidationattack","IntimidationChance=50"}

 	}
}

CreatureTemplates:addCreatureTemplate(vsh, "vsh")