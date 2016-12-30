emperors_hand = Creature:new {
	objectName = "@mob/creature_names:",
	customName = "Aralina Silk (Emperor's Hand)",
	socialGroup = "dark_jedi",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 85.00,
	damageMin = 1800,
	damageMax = 3310,
	baseXp = 278490,
	baseHAM = 421000,
	baseHAMmax = 3092000,
	armor = 3,
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
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
 		"object/mobile/dressed_emperors_hand_human_male_01.iff",
 		"object/mobile/dressed_emperors_hand_human_male_02.iff",
 		"object/mobile/dressed_emperors_hand_zabrak_male_01.iff",
 		"object/mobile/dressed_emperors_hand_human_female_01.iff"},
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
				{group = "nyms_rare", chance = 3000000},
				{group = "g_pistol_heroic_exar", chance = 2000000},
				{group = "g_named_crystals", chance = 1000000},
				{group = "weapons_all", chance = 4000000}
		},
			lootChance = 10000000
		  },
		  {
			groups = {
				{group = "nyms_rare", chance = 3000000},
				{group = "aakuan_common", chance = 2000000},
				{group = "g_named_crystals", chance = 1000000},
				{group = "weapons_all", chance = 4000000}
		},
			lootChance = 10000000
		  },
		  {
			groups = {
				{group = "g_pistol_heroic_exar", chance = 3000000},
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
				{group = "g_carbine_heroic_sd", chance = 3000000},
				{group = "g_carbine_kun_massassi", chance = 2000000},
				{group = "g_named_crystals", chance = 1000000},
				{group = "g_polearm_heroic_sd", chance = 4000000}
		},
			lootChance = 10000000
		  },
		  {
			groups = {
				{group = "g_carbine_heroic_sd", chance = 500000},
				{group = "g_carbine_kun_massassi", chance = 500000},
				{group = "g_polearm_heroic_sd", chance = 500000},
				{group = "g_pvp_bf_knuckler", chance = 500000},
				{group = "g_sword_pvp_bf_01", chance = 500000},
				{group = "g_pistol_heroic_exar", chance = 500000},
				{group = "g_pistol_heroic_sd", chance = 500000},
				{group = "g_som_2h_sword_obsidian", chance = 500000},
				{group = "g_som_2h_sword_tulrus", chance = 500000},
				{group = "g_som_sword_obsidian", chance = 500000},
				{group = "weapons_all", chance = 4300000},
				{group = "g_ep3_chiss_poacher_backpack", chance = 200000},
				{group = "g_ep3_loot_necrosis", chance = 500000}
			},
			lootChance = 10000000
		},
		  {
			groups = {
				{group = "g_ep3_chiss_poacher_backpack", chance = 10000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "g_ep3_loot_necrosis", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "g_som_2h_sword_tulrus", chance = 2500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "pearls_flawless", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "g_som_sword_obsidian", chance = 2500000}
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
				{group = "g_som_sword_obsidian", chance = 2500000}
			},
			lootChance = 10000000
		},
		  {
			groups = {
				{group = "nyms_rare", chance = 3000000},
				{group = "aakuan_common", chance = 2000000},
				{group = "g_named_crystals", chance = 1000000},
				{group = "g_ep3_loot_necrosis", chance = 4000000}
		},
			lootChance = 10000000
		  },
		  {
			groups = {
				{group = "nyms_rare", chance = 3000000},
				{group = "g_som_2h_sword_tulrus", chance = 2000000},
				{group = "g_named_crystals", chance = 1000000},
				{group = "weapons_all", chance = 4000000}
		},
			lootChance = 10000000
		  },
		  {
			groups = {
				{group = "nyms_rare", chance = 3000000},
				{group = "aakuan_common", chance = 2000000},
				{group = "g_named_crystals", chance = 1000000},
				{group = "weapons_all", chance = 4000000}
		},
			lootChance = 10000000
		  },
		  {
			groups = {
				{group = "nyms_rare", chance = 3000000},
				{group = "aakuan_common", chance = 2000000},
				{group = "g_named_crystals", chance = 1000000},
				{group = "weapons_all", chance = 4000000}
		},
			lootChance = 10000000
		  },
		  {
			groups = {
				{group = "nyms_rare", chance = 3000000},
				{group = "aakuan_common", chance = 2000000},
				{group = "g_named_crystals", chance = 1000000},
				{group = "g_ep3_loot_necrosis", chance = 4000000}
		},
			lootChance = 10000000
		  },
		  {
			groups = {
				{group = "g_carbine_heroic_sd", chance = 500000},
				{group = "g_carbine_kun_massassi", chance = 500000},
				{group = "g_polearm_heroic_sd", chance = 500000},
				{group = "g_pvp_bf_knuckler", chance = 500000},
				{group = "g_sword_pvp_bf_01", chance = 500000},
				{group = "g_pistol_heroic_exar", chance = 500000},
				{group = "g_pistol_heroic_sd", chance = 500000},
				{group = "g_som_2h_sword_obsidian", chance = 500000},
				{group = "g_som_2h_sword_tulrus", chance = 500000},
				{group = "g_som_sword_obsidian", chance = 500000},
				{group = "weapons_all", chance = 4300000},
				{group = "g_ep3_chiss_poacher_backpack", chance = 200000},
				{group = "g_ep3_loot_necrosis", chance = 500000}
			},
			lootChance = 10000000
		},
		  {
			groups = {
				{group = "saberhand1", chance = 10000000}
			},
			lootChance = 10000000
		},
		},
	weapons = {"dark_jedi_weapons_gen3"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(emperors_hand, "emperors_hand")
