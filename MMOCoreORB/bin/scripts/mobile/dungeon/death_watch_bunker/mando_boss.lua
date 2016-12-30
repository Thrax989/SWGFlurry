mando_boss = Creature:new {
	objectName = "@mob/creature_names:",
	customName = "Mand'alor",
	pvpFaction = "",
	socialGroup = "",
	faction = "",
	level = 300,
	chanceHit = 65,
	damageMin = 3950,
	damageMax = 6580,
	baseXp = 321478,
	baseHAM = 2600000,
	baseHAMmax = 3800000,
	armor = 3,
	resists = {125,125,125,125,125,125,125,125,100},
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
	scale = 1.75,

	templates = {"object/mobile/dressed_death_watch_gold.iff"},
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
				{group = "pearls_flawless", chance = 5000000},
				{group = "g_pistol_heroic_exar", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		},
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
				{group = "pearls_flawless", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		},
		  {
			groups = {
				{group = "nge3", chance = 3000000},
				{group = "commando_loot", chance = 2000000},
				{group = "g_named_crystals", chance = 1000000}
		},
			lootChance = 10000000
		  },
		  {
			groups = {
				{group = "commando_loot", chance = 3000000},
				{group = "aakuan_common", chance = 2000000},
				{group = "g_named_crystals", chance = 1000000},
				{group = "weapons_all", chance = 4000000}
		},
			lootChance = 10000000
		  },
		  {
			groups = {
				{group = "g_pistol_heroic_sd", chance = 3000000},
				{group = "g_pistol_heroic_exar", chance = 2000000},
				{group = "g_sword_pvp_bf_01", chance = 1000000},
				{group = "g_pvp_bf_knuckler", chance = 4000000}
		},
			lootChance = 10000000
		  },
		  {
			groups = {
				{group = "barc_speeder_deed_group", chance = 250000},
				{group = "av_21_scheme", chance = 250000},
				{group = "mandalorian_schemes", chance = 250000},
				{group = "av_21_pp", chance = 250000}
			},
			lootChance = 1000000
		  },
		  {
			groups = {
				{group = "g_ep3_loot_blackbane", chance = 500000},
				{group = "g_ep3_loot_ripper", chance = 4300000},
				{group = "g_ep3_loot_poisonspike", chance = 200000},
				{group = "g_xantha_smasher", chance = 500000}
			},
			lootChance = 10000000
		},
		  {
			groups = {
				{group = "nge1", chance = 10000000}
			},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "g_punch_dagger", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "g_blasterfist", chance = 2500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "pearls_flawless", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "g_ep3_loot_liquidsilver", chance = 2500000}
			},
			lootChance = 10000000
		},
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
				{group = "pearls_flawless", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "g_ep3_loot_firestar", chance = 2500000}
			},
			lootChance = 10000000
		},
		  {
			groups = {
				{group = "bounty_hunter_schemes", chance = 10000000}
		},
			lootChance = 1000000
		  },
		  {
			groups = {
				{group = "saberhand11", chance =100000},
				{group = "saberhand10", chance =100000},
				{group = "saberhand19", chance =100000},
				{group = "saberhand8", chance =700000}
			},
			lootChance = 1000000
		},
			{
				groups = {
					{group = "bounty_hunter_armor", chance = 4500000},
					{group = "g_rifle_deathtroopers", chance = 2000000},
					{group = "g_ep3_loot_void", chance = 500000},
					{group = "g_heavy_avatar_acid_beam", chance = 500000},
					{group = "g_blasterfist", chance = 500000},
					{group = "g_pistol_mandalorian", chance = 500000},
					{group = "g_rifle_flame_thrower_light", chance = 500000},
					{group = "g_rifle_mandalorian", chance = 500000},
					{group = "g_rifle_lightning_heavy", chance = 500000}
				},
				lootChance = 10000000
		},
		},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster,swordsmanmaster,pistoleermaster,fencermaster,pikemanmaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(mando_boss, "mando_boss")
