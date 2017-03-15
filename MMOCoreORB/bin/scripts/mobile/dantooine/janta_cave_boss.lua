janta_cave_boss = Creature:new {
	  customName = "Janta King",
	  socialGroup = "janta_tribe",
	  faction = "janta_tribe",
	  level = 300,
	  chanceHit = 80.00,
	  damageMin = 2600,
	  damageMax = 3800,
	  baseXp = 0,
	  baseHAM = 400000,
	  baseHAMmax = 800000,
	  armor = 3,
	  resists = {200,100,100,100,100,100,100,100,65},
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
		Scale = 2.0,

	templates = {"object/mobile/tusken_raider.iff"},
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
				{group = "aakuan_common", chance = 3000000},
				{group = "g_named_crystals", chance = 3000000}

			},
			lootChance = 8000000
	},
	{
		groups = {
			{group = "axkva_min", chance = 4000000},
			{group = "armor_attachments", chance = 3000000},
			{group = "clothing_attachments", chance = 3000000}

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
