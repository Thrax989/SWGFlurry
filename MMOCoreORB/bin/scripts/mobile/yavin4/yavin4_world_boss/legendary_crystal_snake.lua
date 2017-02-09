legendary_crystal_snake = Creature:new {
	--objectName = "@mob/creature_names:",
	customName = "Legendary Crystal Viper Snake",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 95.00,
	damageMin = 2800,
	damageMax = 8800,
	baseXp = 100000000,
	baseHAM = 20000000,
	baseHAMmax = 25000000,
	armor = 3,
	resists = {100,100,100,100,100,100,100,100,100},
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
	scale = 30.0,
	templates = {"object/mobile/giant_crystal_snake.iff"},
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
				{group = "saberhand20", chance = 4000000}
		},
			lootChance = 10000000
		  },
		  {
			groups = {
				{group = "saberhand18", chance = 3000000},
				{group = "saberhand19", chance = 2000000},
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
				{group = "saberhand17", chance = 4300000},
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
				{group = "saberhand15", chance = 3000000},
				{group = "saberhand16", chance = 2000000},
				{group = "g_named_crystals", chance = 1000000},
				{group = "g_ep3_loot_necrosis", chance = 4000000}
		},
			lootChance = 10000000
		  },
		  {
			groups = {
				{group = "saberhand14", chance = 3000000},
				{group = "g_som_2h_sword_tulrus", chance = 2000000},
				{group = "g_named_crystals", chance = 1000000},
				{group = "weapons_all", chance = 4000000}
		},
			lootChance = 10000000
		  },
		  {
			groups = {
				{group = "saberhand13", chance = 3000000},
				{group = "saberhand12", chance = 2000000},
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
				{group = "worldbosstoken", chance = 10000000}
			},
			lootChance = 10000000
		},
		},
	weapons = {"creature_spit_heavy_flame"},
	reactionStf = "@npc_reaction/slang",
	attacks = {
		{"creatureareacombo","StateAccuracyBonus=100"},
		{"creatureareaknockdown","StateAccuracyBonus=100"},
		{"knockdownattack","KnockdownChance=100"},
		{"creatureareaknockdown","KnockdownChance=100"},
		{"dizzyattack","DizzyChance=100"},
		{"stunattack","StunChance=100"},
		{"mildpoison","PoisonChance=100"},
		{"intimidationattack","IntimidationChance=100"},
		{"mediumpoison","PoisonChance=100"},
		{"creatureareapoison","PoisonChance=100"},
		{"strongpoison","PoisonChance=100"},
		{"creatureareaattack","StateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(legendary_crystal_snake, "legendary_crystal_snake")