baxter_stockman = Creature:new {
	-- objectName = "@mob/creature_names:",
	customName = "\\#00ff00<<< Baxter Stockman (Mad Scientist) >>> \\#ff0000[lvl 300]",
	socialGroup = "mercenary",
	faction = "",
	level = 300,
	chanceHit = 35.0,
	damageMin = 2800,
	damageMax = 4500,
  specialDamageMult = 2.5,
	baseXp = 128549,
	baseHAM = 1000000,
	baseHAMmax = 1200000,
	armor = 3,
	resists = {195,195,195,195,195,195,195,195,200},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED + INTERESTING,
	diet = HERBIVORE,
	scale = 1.5,
  
	templates = {
		"object/mobile/dressed_geonosian_scientist_01.iff",
		"object/mobile/warren_research_scientist.iff"},
  
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
				{group = "chemistry_component", chance = 3500000},
				{group = "chemistry_component_advanced", chance = 4500000},
				{group = "weapon_component", chance = 1000000},
				{group = "weapon_component_advanced", chance = 1000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "chemistry_component", chance = 3500000},
				{group = "chemistry_component_advanced", chance = 4500000},
				{group = "weapon_component", chance = 1000000},
				{group = "weapon_component_advanced", chance = 1000000},
			},
			lootChance = 5000000
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
			lootChance = 5000000
		},
		{
			groups = {
				{group = "chemistry_component", chance = 3500000},
				{group = "chemistry_component_advanced", chance = 4500000},
				{group = "weapon_component", chance = 1000000},
				{group = "weapon_component_advanced", chance = 1000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "chemistry_component", chance = 3500000},
				{group = "chemistry_component_advanced", chance = 4500000},
				{group = "weapon_component", chance = 1000000},
				{group = "weapon_component_advanced", chance = 1000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "chemistry_component", chance = 3500000},
				{group = "chemistry_component_advanced", chance = 4500000},
				{group = "weapon_component", chance = 1000000},
				{group = "weapon_component_advanced", chance = 1000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "fire_breathing_spider", chance = 3500000},
				{group = "geonosian_cubes", chance = 4500000},
				{group = "kimogila_common", chance = 1000000},
				{group = "krayt_tissue_rare", chance = 1000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "fire_breathing_spider", chance = 3500000},
				{group = "geonosian_cubes", chance = 4500000},
				{group = "kimogila_common", chance = 1000000},
				{group = "krayt_tissue_rare", chance = 1000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "chemistry_component", chance = 3500000},
				{group = "chemistry_component_advanced", chance = 4500000},
				{group = "weapon_component", chance = 1000000},
				{group = "weapon_component_advanced", chance = 1000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 10000000
		}	
  },
  
	weapons = {"imperial_weapons_heavy"},
	reactionStf = "@npc_reaction/slang",
	attacks = { merge (bountyhuntermaster,marksmanmaster,brawlermaster,pikemanmaster,fencermaster,swordsmanmaster,tkamaster,pistoleermaster,commandomaster)
    {"creatureareacombo","StateAccuracyBonus=100"},
		{"creatureareaknockdown","StateAccuracyBonus=75"},
		{"knockdownattack","KnockdownChance=75"},
		{"dizzyattack","DizzyChance=75"},
		{"stunattack","StunChance=100"},
		{"mildpoison","PoisonChance=100"},
		{"intimidationattack","IntimidationChance=100"},
		{"mediumpoison","PoisonChance=100"},
    {"mediumdisease","DiseaseChance=50"},
		{"creatureareapoison","PoisonChance=100"},
		{"strongpoison","PoisonChance=100"},
		{"creatureareaattack","StateAccuracyBonus=100"},
    {"creatureareadisease","DiseaseChance=50"},
    {"creatureareableeding","BleedChance=100"}
     }
}

CreatureTemplates:addCreatureTemplate(baxter_stockman, "baxter_stockman")
