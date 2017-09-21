custom_exar_kun_boss = Creature:new {
	--objectName = "@mob/creature_names:",
	customName = "<< Shard of Exar Kun >>",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 75.00,
	damageMin = 1800,
	damageMax = 3310,
	baseXp = 27849,
	baseHAM = 521000,
	baseHAMmax = 792000,
	armor = 3,
	resists = {90,90,90,90,90,90,90,90,90},
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
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.5,
	templates = {"object/mobile/costume_exar_kun_cultist.iff"},
	lootGroups = {
		{
			groups = {
				{group = "power_crystals", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "power_crystals", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		},
		 {
			groups = {
				{group = "exar_kun_ls_group", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "power_crystals", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "power_crystals", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "nge_house_loot_deed_01", chance = 5000000},
				{group = "nge_house_loot_deed_windowed", chance = 2500000},
				{group = "g_command_console", chance = 2500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "crafted_rugs", chance = 5000000},
				{group = "g_banner_imperial", chance = 2500000},
				{group = "g_banner_rebel", chance = 2500000}
			},
			lootChance = 10000000
		},
		  {
			groups = {
				{group = "crystal_kuns_blood", chance = 10000000},
				
		},
			lootChance = 10000000
		  },
		 
		},
	weapons = {"mixed_force_weapons"},
	reactionStf = "",
	attacks = merge(forcewielder,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(custom_exar_kun_boss, "custom_exar_kun_boss")