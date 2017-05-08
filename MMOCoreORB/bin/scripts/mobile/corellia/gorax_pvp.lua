gorax_pvp = Creature:new {
	customName = "A Gorax Outcast",
	socialGroup = "gorax",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 50.00,
	damageMin = 2000,
	damageMax = 3000,
	specialDamageMult = 5.0,
	baseXp = 28549,
	baseHAM = 500000,
	baseHAMmax = 750000,
	armor = 2,
	resists = {90,90,90,90,90,90,90,90,45},
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
	creatureBitmask = PACK + STALKER + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
  	scale = 0.5,

    templates = {"object/mobile/gorax.iff"},
    lootGroups = {
		{
		groups = {
				{group = "backpacks_b01, chance = 5000000},
			        {group = "backpacks_b02, chance = 5000000}

			},
			lootChance = 10000000
		},
		{
		groups = {
				{group = "foods_lg", chance = 10000000}

			},
			lootChance = 10000000
		},
		{
		groups = {
				{group = "foods_lg", chance = 10000000}

			},
			lootChance = 10000000
		},
	{
			groups = {
				{group = "gorax_common", chance = 6000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "gorax_common", chance = 10000000}
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
		    {group = "g_named_crystals", chance = 10000000}
    },
    		lootChance = 10000000
    },
    {
      	groups = {
        	{group = "apocalypse", chance = 10000000}
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
				{group = "krayt_tissue_rare", chance = 10000000}
		},
			lootChance = 10000000
		},
    {
			groups = {
				{group = "looted_container", chance = 10000000}
		},
			lootChance = 10000000
		},
    },
	weapons = {"creature_spit_heavy_flame"},
	reactionStf = "@npc_reaction/fancy",
	attacks = {
	    {"creatureareaknockdown","KnockdownChance=100"},
		{"creatureareacombo","StateAccuracyBonus=100"},
		{"creatureareaknockdown","StateAccuracyBonus=100"},
		{"dizzyattack","DizzyChance=100"},
		{"stunattack","StunChance=100"},
		{"intimidationattack","IntimidationChance=100"},
    	{"creatureareableeding","BleedChance=100"}
	}
}

CreatureTemplates:addCreatureTemplate(gorax_pvp, "gorax_pvp")
