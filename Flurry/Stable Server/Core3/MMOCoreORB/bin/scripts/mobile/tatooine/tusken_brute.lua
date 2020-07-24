tusken_brute = Creature:new {
	objectName = "@mob/creature_names:tusken_brute",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 300,
	chanceHit = 25.0,
	damageMin = 1400,
	damageMax = 1800,
	baseXp = 25000,
	baseHAM = 90000,
	baseHAMmax = 100000,
	armor = 0,
	resists = {115,115,115,115,115,115,115,115,115},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/tusken_raider.iff"},
	lootGroups = {
		{
			groups = {
				{group = "jedi_comp_group", chance = 10000000},
			},
			lootChance = 200000
		},		
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000},
			},
			lootChance = 8000000
		},
		{
			groups = {
				{group = "wearables_uncommon", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "tusken_common", chance = 10000000},
			},
			lootChance = 8000000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 2000000
		}
	},
	weapons = {"tusken_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,brawlermaster,fencermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(tusken_brute, "tusken_brute")
