custom_exar_kun_boss = Creature:new {
	customName = "Shadow of Exar Kun",
	socialGroup = "townsperson",
	pvpFaction = "townsperson",
	faction = "",
	level = 300,
	chanceHit = 25.00,
	damageMin = 1050,
	damageMax = 3050,
	baseXp = 13273,
	baseHAM = 400000,
	baseHAMmax = 600000,
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
                   		 {group = "krayt_pearls", chance = 5000000},
                    		 {group = "krayt_pearls", chance = 5000000}
		},
                	lootChance = 10000000
		},
{
            		groups = {
                   		 {group = "krayt_pearls", chance = 5000000},
                    		 {group = "krayt_pearls", chance = 5000000}
		},
                	lootChance = 10000000
		},
		{
            		groups = {
                   		 {group = "krayt_pearls", chance = 5000000},
                    		 {group = "krayt_pearls", chance = 5000000}
		},
                	lootChance = 10000000
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
				{group = "lootcollectiontierdiamond", chance = 10000000}
		},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}
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
				{group = "lootcollectiontierdiamond", chance = 10000000}
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
				{group = "tierthree", chance = 10000000}
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
