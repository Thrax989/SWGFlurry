ec_reward = Creature:new {
	customName = "Pinata One",
	socialGroup = "thug",
	faction = "thug",
	level = 300,
	chanceHit = 99.0,
	damageMin = 20000,
	damageMax = 50000,
	baseXp = 1,
	baseHAM = 9000000,
	baseHAMmax = 9000000,
	armor = 3,
	resists = {190,190,190,190,190,190,190,190,190},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_criminal_thug_aqualish_male_01.iff",
		"object/mobile/dressed_criminal_thug_aqualish_male_02.iff",
		"object/mobile/dressed_criminal_thug_aqualish_female_01.iff",
		"object/mobile/dressed_criminal_thug_aqualish_female_02.iff",
		"object/mobile/dressed_criminal_thug_bothan_male_01.iff",
		"object/mobile/dressed_criminal_thug_bothan_female_01.iff",
		"object/mobile/dressed_criminal_thug_human_male_01.iff",
		"object/mobile/dressed_criminal_thug_human_male_02.iff",
		"object/mobile/dressed_criminal_thug_human_female_01.iff",
		"object/mobile/dressed_criminal_thug_human_female_02.iff",
		"object/mobile/dressed_criminal_thug_rodian_male_01.iff",
		"object/mobile/dressed_criminal_thug_rodian_female_01.iff",
		"object/mobile/dressed_criminal_thug_trandoshan_male_01.iff",
		"object/mobile/dressed_criminal_thug_trandoshan_female_01.iff",
		"object/mobile/dressed_criminal_thug_zabrak_male_01.iff",
		"object/mobile/dressed_criminal_thug_zabrak_female_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "geonosian_common", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "death_watch_bunker_lieutenants", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "trash_rare", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "ancient_force_bread", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "jedi_jewelry", chance = 10000000},
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
		},
		{
			groups = {
				{group = "jedi_comp_group", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "jedi_comp_group", chance = 10000000},
			},
			lootChance = 10000000
		},     
		{
			groups = {
				{group = "weapon_component_advanced", chance = 10000000},
			},
			lootChance = 10000000
		}, 
		{
			groups = {
				{group = "legendary_comp_group", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "legendary_comp_group", chance = 10000000},
			},
			lootChance = 10000000
		},    
		{
			groups = {
				{group = "chemistry_component_advanced", chance = 10000000},
			},
			lootChance = 10000000
		},    
		{
			groups = {
				{group = "mokk_elites", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "donkuwah_common", chance = 10000000},
			},
			lootChance = 10000000
		}, 
		{
			groups = {
				{group = "nonjedi_jewelry", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "rarelootsystem", chance = 10000000},
			},
			lootChance = 10000000
		},    
		{
			groups = {
				{group = "resource_deed_loot", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "dotsystem", chance = 10000000},
			},
			lootChance = 10000000
		}  
	},
	weapons = {"pirate_weapons_light"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(marksmannovice,brawlernovice)
}

CreatureTemplates:addCreatureTemplate(ec_reward, "ec_reward")