ep3_clone_relics_durge_droid_01 = Creature:new {
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

	templates = {"object/mobile/ep3/ep3_clone_relics_durge_droid_01.iff"},
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
				{group = "g_baton_avatar_trando_stun_stick", chance = 500000},
				{group = "g_sword_rebel", chance = 500000},
				{group = "g_sword_massassi", chance = 500000},
				{group = "g_som_2h_sword_massassi", chance = 500000},
				{group = "g_massassiknuckler", chance = 500000},
				{group = "g_rifle_massassi_ink", chance = 500000},
				{group = "g_pistol_rebel", chance = 500000},
				{group = "g_carbine_kun_massassi", chance = 500000},
				{group = "g_rifle_eweb", chance = 500000},
				{group = "g_carbine_specops_bothan_carbine", chance = 500000},
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

CreatureTemplates:addCreatureTemplate(ep3_clone_relics_durge_droid_01, "ep3_clone_relics_durge_droid_01")
