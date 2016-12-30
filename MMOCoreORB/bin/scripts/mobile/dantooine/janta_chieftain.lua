janta_chieftain = Creature:new {
	customName = "Janta Chieftain",
	socialGroup = "janta_tribe",
	pvpFaction = "",
	faction = "janta_tribe",
	level = 300,
	chanceHit = 50.00,
	damageMin = 1800,
	damageMax = 3310,
	baseXp = 27849,
	baseHAM = 321000,
	baseHAMmax = 392000,
	armor = 3,
	resists = {50,50,50,50,50,50,50,50,50},
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
	scale = 2.0,

	templates = {"object/mobile/dantari_male.iff"},
		lootGroups = {
		{
			groups = {
				{group = "armor_all", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "weapons_all", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "nge2", chance = 1000000}
			},
			lootChance = 1000000
		 },
		 {
			groups = {
				{group = "g_pistol_heroic_exar", chance = 10000000}
			},
			lootChance = 10000000
		},
		 {
			groups = {
				{group = "g_som_2h_sword_obsidian", chance = 10000000}
			},
			lootChance = 10000000
		},
		 {
			groups = {
				{group = "janta_rare", chance = 10000000}
			},
			lootChance = 10000000
		},
		 {
			groups = {
				{group = "janta_rare", chance = 10000000}
			},
			lootChance = 10000000
		},
		},
	weapons = {"primitive_weapons"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(pikemanmaster,fencermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(janta_chieftain, "janta_chieftain")
