guard_pvp = Creature:new {
	customName = "A Temple Guard",
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
    scale = 0.5,
	templates = {
	                "object/mobile/krayt_dragon_hue.iff",
                   	"object/mobile/acklay_hue.iff",
                   	"object/mobile/gaping_spider.iff",
                   	"object/mobile/gorax.iff",
                   	"object/mobile/rancor_hue.iff"
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
               	{group = "gorax_common", chance = 10000000}
    	},
           	lootChance = 10000000
    	},
		{
       	    groups = {
            	{group = "fire_breathing_spider", chance = 10000000}
    	},
           	lootChance = 10000000
    	},
        {
        	groups = {
	           	{group = "acklays", chance = 10000000}
        },
    		lootChance = 10000000
        },
        {
        	groups = {
            	{group = "krayt_tissue_rare", chance = 10000000}
        },
      		lootChance = 10000000
        },
        {
        	groups = {
            	{group = "rancor_common", chance = 10000000}
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
	weapons = {},
	reactionStf = "",
	attacks = {
	       {"creatureareacombo","StateAccuracyBonus=50"},
	       {"creatureareaknockdown","StateAccuracyBonus=50"},
	       {"knockdownattack","KnockdownChance=50"},
		   {"creatureareaknockdown","KnockdownChance=50"},
		   {"mediumpoison","PoisonChance=50"},
    	   {"mediumdisease","DiseaseChance=50"},
    	   {"creatureareableeding","BleedChance=50"},
		   {"dizzyattack","DizzyChance=50"},
		   {"stunattack","StunChance=50"},
		   {"intimidationattack","IntimidationChance=50"},
           {"creatureareaattack","StateAccuracyBonus=50"}
    	}
}

CreatureTemplates:addCreatureTemplate(guard_pvp, "guard_pvp")