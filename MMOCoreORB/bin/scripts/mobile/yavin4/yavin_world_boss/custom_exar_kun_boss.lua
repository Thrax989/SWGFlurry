custom_exar_kun_boss = Creature:new {
	--objectName = "@mob/creature_names:",
	customName = "<<Shard of Exar Kun>>",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 45.00,
	damageMin = 1750,
	damageMax = 3750,
	baseXp = 13273,
	baseHAM = 1000000,
	baseHAMmax = 1500000,
	armor = 3,
	resists = {60,60,60,60,60,60,60,60,45},
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
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(forcepowermaster,tkamaster,lightsabermaster,brawlermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(custom_exar_kun_boss, "custom_exar_kun_boss")
