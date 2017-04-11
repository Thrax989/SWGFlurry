janta_chieftain = Creature:new {
	customName = "Janta Chieftain",
	socialGroup = "janta_tribe",
	faction = "janta_tribe",
	level = 300,
	chanceHit = 80.00,
	damageMin = 2000,
	damageMax = 3000,
	specialDamageMult = 4.0,
	baseXp = 27849,
	baseHAM = 800000,
	baseHAMmax = 800000,
	armor = 1,
	resists = {80,80,80,80,80,80,80,80,80},
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
				{group = "armor_attachments", chance = 1000000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "crystals_premium", chance = 4000000},
				{group = "pearls_flawless", chance = 4000000}
		},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "wearables_rare", chance = 4000000},
				{group = "aakuan_common", chance = 4000000},
				{group = "g_named_crystals", chance = 2000000}

		},
			lootChance = 8000000
		},
		{
			groups = {
				{group = "janta_common", chance = 3000000},
				{group = "armor_attachments", chance = 3000000},
				{group = "clothing_attachments", chance = 4000000}

		},
			lootChance = 6000000
		},
		{
			groups = {
				{group = "krayt_tissue_rare", chance = 10000000}
		},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "junk", chance = 10000000}
				},
			lootChance = 6000000
		},
		{
			groups = {
				{group = "pearls_flawless", chance = 10000000}
		},
			lootChance = 6000000
		},
		{
			groups = {
				{group = "geonosian_common", chance = 10000000}
		},
			lootChance = 10000000
		},
		},

	weapons = {"unarmed_weapons"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(tkamaster,swordsmanmaster,fencermaster,pikemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(janta_chieftain, "janta_chieftain")
