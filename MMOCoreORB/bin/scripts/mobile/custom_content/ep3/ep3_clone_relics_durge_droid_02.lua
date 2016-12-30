ep3_clone_relics_durge_droid_02 = Creature:new {
	customName = "Durge Droid",
	randomNameType = NAME_GENERIC_TAG,
	socialGroup = "droids",
	faction = "",
	level = 150,
	chanceHit = 15.0,
	damageMin = 1750,
	damageMax = 2250,
	baseXp = 15000,
	baseHAM = 275000,
	baseHAMmax = 375000,
	armor = 2,
	resists = {65,65,65,65,65,65,65,65,25},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ENEMY + ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/ep3/ep3_clone_relics_durge_droid_02.iff"},
	lootGroups = {
		{
			groups = {
				{group = "pearls_flawless", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
	},
		{
			groups = {
				{group = "g_lance_avatar_wke_heartlance", chance = 500000},
				{group = "g_lance_gcw_gand_shockprod", chance = 500000},
				{group = "g_som_2h_sword_obsidian", chance = 500000},
				{group = "g_som_sword_obsidian", chance = 500000},
				{group = "g_carbine_avatar_trando", chance = 500000},
				{group = "g_carbine_charric", chance = 500000},
				{group = "g_pistol_deathhammer", chance = 500000},
				{group = "g_pistol_flechette", chance = 500000},
				{group = "g_rifle_alliance_guass_generic", chance = 500000},
				{group = "g_rifle_deathtroopers", chance = 500000},
				{group = "weapons_all", chance = 5000000}
			},
			lootChance = 5000000
	},
	{
		groups = {
			{group = "theme_park_reward_rebel_c_3po", chance = 2500000},
			{group = "jabba_theme_park_reelo", chance = 2500000},
			{group = "theme_park_reward_imperial_kaja", chance = 2500000},
			{group = "nyms_common", chance = 2500000}
			},
		lootChance = 2500000
	},
		{
			groups = {
				{group = "cyborggroup1", chance = 1700000},
				{group = "cyborggroup2", chance = 1700000},
				{group = "cyborggroup3", chance = 1700000},
				{group = "cyborggroup4", chance = 1700000},
				{group = "cyborggroup5", chance = 1600000},
				{group = "cyborggroup6", chance = 1600000}
			},
			lootChance = 500000
		}
	},
	weapons = {"durge_weapons"},
	conversationTemplate = "",
	attacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster,pikemanmaster,fencermaster,swordsmanmaster,tkamaster,pistoleermaster,commandomaster)
}

CreatureTemplates:addCreatureTemplate(ep3_clone_relics_durge_droid_02, "ep3_clone_relics_durge_droid_02")
