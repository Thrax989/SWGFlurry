marvolo = Creature:new {
	-- objectName = "@mob/creature_names:",
	customName = "marvolo (Dark Jedi Consular)",
	socialGroup = "dark_jedi",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 50,
	damageMin = 2570,
	damageMax = 4150,
	baseXp = 35409,
	baseHAM = 2950000,
	baseHAMmax = 3250000,
	armor = 0,
	resists = {95,95,95,95,95,95,95,95,95},
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
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED + INTERESTING,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dark_jedi_human_male_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "saberhand3", chance = 1000000},
				{group = "armor_attachments", chance = 4500000},
				{group = "clothing_attachments", chance = 4500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "g_blasterfist", chance = 10000000}
			},
			lootChance = 5000000
		 },
		 {
			groups = {
				{group = "barc_speeder_deed_group", chance = 10000000}
			},
			lootChance = 250000
		},
		{
			groups = {
				{group = "g_2h_sword_sith", chance = 10000000}
			},
			lootChance = 5000000
		 },
			{
			groups = {
				{group = "nge1", chance = 10000000}
			},
			lootChance = 5000000
		 },
		{
			groups = {
				{group = "nge2", chance = 10000000}
			},
			lootChance = 5000000
		 },
		{
			groups = {
				{group = "nge3", chance = 10000000}
			},
			lootChance = 5000000
		 },
		{
			groups = {
				{group = "saberhand27", chance = 10000000}
			},
			lootChance = 5000000
		 },
		{
			groups = {
				{group = "saberhand11", chance = 10000000}
			},
			lootChance = 5000000
		 },
		{
			groups = {
				{group = "saberhand19", chance = 10000000}
			},
			lootChance = 5000000
		 },
		{
			groups = {
				{group = "saberhand4", chance = 1000000},
				{group = "armor_attachments", chance = 4500000},
				{group = "clothing_attachments", chance = 4500000}
			},
			lootChance = 10000000
		},
		 {
			groups = {
				{group = "saberhand1", chance = 5000000},
				{group = "saberhand2", chance = 5000000}
			},
			lootChance = 5000000
		},
		},	
	weapons = {"dark_jedi_weapons_gen4"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(marvolo, "marvolo")
