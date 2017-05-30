empguard_pvp = Creature:new {
	customName = "Emperor's Guard",
	socialGroup = "self",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 50.00,
	damageMin = 2000,
	damageMax = 3000,
	specialDamageMult = 5.0,
	baseXp = 20000,
	baseHAM = 500000,
	baseHAMmax = 750000,
	armor = 2,
	resists = {80,80,80,80,80,80,80,80,40},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
    scale = 1.5,
	templates = {
	                "object/mobile/dressed_dathomir_nightsister_axkva.iff",
                   	"object/mobile/dantari_male.iff",
                   	"object/mobile/tusken_raider.iff",
                    "object/mobile/dressed_dathomir_sing_mt_clan_councilwoman.iff"
    	},
	lootGroups = {
		{
			groups = {
				{group = "armor_attachments", chance = 5000000},
				{group = "clothing_attachments", chance = 5000000}
		},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 5000000},
				{group = "clothing_attachments", chance = 5000000}
		},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 5000000},
				{group = "clothing_attachments", chance = 5000000}
		},
			lootChance = 10000000
		},
		{
                        groups = {
                               {group = "hologram_lg1", chance = 5000000},
                               {group = "hologram_lg2", chance = 5000000}
                },
                        lootChance = 2500000
                },
		{
	    	groups = {
				{group = "stun_weapons", chance = 5000000},
			    {group = "stun_ranged", chance = 5000000}

		},
			lootChance = 5000000
		},
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
               	{group = "nightsister_rare", chance = 10000000}
    	},
           	lootChance = 10000000
    	},
		{
       	    groups = {
            	{group = "janta_common", chance = 10000000}
    	},
           	lootChance = 10000000
    	},
        {
        	groups = {
	           	{group = "axkva_min", chance = 10000000}
        },
    		lootChance = 10000000
        },
        {
        	groups = {
            	{group = "apocalypse", chance = 10000000}
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
	attacks = merge(fencermaster,swordsmanmaster,tkamaster,pikemanmaster,brawlermaster)
	
}

CreatureTemplates:addCreatureTemplate(empguard_pvp, "empguard_pvp")
