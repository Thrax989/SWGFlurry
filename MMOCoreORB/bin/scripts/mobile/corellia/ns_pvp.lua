ns_pvp = Creature:new {
	customName = "A Vengeful Nightsister",
	socialGroup = "nightsister",
	pvpFaction = "",
	faction = "nightsister",
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
  	scale = 2.0,

    templates = {"object/mobile/dressed_dathomir_nightsister_axkva.iff"},
    lootGroups = {
		{
		groups = {
				{group = "backpacks_b01", chance = 5000000},
			        {group = "backpacks_b02", chance = 5000000}

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
				{group = "crystals_premium", chance = 2500000},
				{group = "color_crystals", chance = 2500000},		
				{group = "nightsister_common", chance = 1900000},
				{group = "pistols", chance = 500000},
				{group = "rifles", chance = 500000},
				{group = "carbines", chance = 500000},
				{group = "melee_weapons", chance = 1000000},
				{group = "wearables_rare", chance = 600000}
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
				{group = "nightsister_rare", chance = 10000000}
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
	weapons = {"mixed_force_weapons"},
	reactionStf = "@npc_reaction/fancy",
	attacks = merge(forcepowermaster,fencermaster,brawlermaster,swordsmanmaster)

}

CreatureTemplates:addCreatureTemplate(ns_pvp, "ns_pvp")
