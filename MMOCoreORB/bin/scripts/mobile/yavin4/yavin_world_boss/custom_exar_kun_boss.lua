custom_exar_kun_boss = Creature:new {
	customName = "Shadow of Exar Kun",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 35.00,
	damageMin = 1750,
	damageMax = 3750,
	baseXp = 13273,
	baseHAM = 750000,
	baseHAMmax = 1000000,
	armor = 3,
	resists = {25,65,25,80,80,80,25,35,45},
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
				{group = "exar_kun_ls_group", chance = 10000000}
			},
			lootChance = 10000000
		},
		 {
			groups = {
				{group = "power_crystals", chance = 10000000}
			},
			lootChance = 9000000
		},
		  {
			groups = {
				{group = "crystal_kuns_blood", chance = 10000000}
				
		},
			lootChance = 9000000
		  },
		{
			groups = {
				{group = "armor_attachments", chance = 10000000}
		},
			lootChance = 9000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
		},
			lootChance = 9000000
		},
		{
			groups = {
				{group = "tierone", chance = 10000000}
		},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "tiertwo", chance = 10000000}
		},
			lootChance = 3500000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}
		},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "tiertwo", chance = 10000000}
		},
			lootChance = 3500000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}
		},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "tiertwo", chance = 10000000}
		},
			lootChance = 3500000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}
		},
			lootChance = 1000000
		},
},
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(forcepowermaster,tkamaster,lightsabermaster,brawlermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(custom_exar_kun_boss, "custom_exar_kun_boss")