janta_cave_boss = Creature:new {
	  customName = "Janta King",
	  socialGroup = "janta_tribe",
	  faction = "janta_tribe",
	  level = 300,
	  chanceHit = 60.00,
	  damageMin = 2400,
	  damageMax = 3200,
	  baseXp = 0,
	  baseHAM = 400000,
	  baseHAMmax = 500000,
	  armor = 3,
	  resists = {200,100,100,100,100,100,100,100,60},
	  meatType = "",
	  meatAmount = 0,
	  hideType = "",
	  hideAmount = 0,
	  boneType = "",
	  boneAmount = 0,
	  milk = 0,
	  tamingChance = 0,
	  ferocity = 0,
	  pvpBitmask = AGGRESSIVE + ATTACKABLE,
	  creatureBitmask = PACK + HERD,
	  optionsBitmask = 128,
	  diet = HERBIVORE,
		Scale = 2.0,

	templates = {"object/mobile/exar_kun.iff"},
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
				{group = "wearables_rare", chance = 10000000},
				{group = "aakuan_common", chance = 10000000},
				{group = "g_named_crystals", chance = 10000000}

			},
			lootChance = 7500000
	},
	{
		groups = {
			{group = "axkva_min", chance = 10000000},
			{group = "armor_attachments", chance = 10000000},
			{group = "clothing_attachments", chance = 10000000}

		},
		lootChance = 6000000
		},
		{
			groups = {
			{group = "krayt_tissue_rare", chance = 10000000}
		},
		lootChance = 6000000
		},
		{
		groups = {
			{group = "looted_container", chance = 10000000},
				},
				lootChance = 6000000
			},
			{
			groups = {
				{group = "pearls_flawless", chance = 10000000},
					},
					lootChance = 6000000
				},
	},
		weapons = {"dark_jedi_weapons_gen4"},
	  reactionStf = "@npc_reaction/fancy",
	  attacks = merge(lightsabermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(janta_cave_boss, "janta_cave_boss")
