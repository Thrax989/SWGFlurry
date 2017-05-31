imp_pvp = Creature:new {
	customName = "An Imperial Guard",
	socialGroup = "imperial",
	pvpFaction = "imperial",
	faction = "imperial",
	level = 300,
	chanceHit = 75.00,
	damageMin = 1500,
	damageMax = 3000,
	specialDamageMult = 7.5,
	baseXp = 25000,
	baseHAM = 450000,
	baseHAMmax = 550000,
	armor = 3,
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
	pvpBitmask = ATTACKABLE + OVERT,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
  	scale = 1.5,

    templates = {"object/mobile/darth_vader.iff"},
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
			lootChance = 5000000
		},
        {
        	groups = {
               	{group = "saberhand27", chance = 10000000}
    	},
           	lootChance = 5000000
    	},
		{
       	    groups = {
            	{group = "saberhand26", chance = 10000000}
    	},
           	lootChance = 5000000
    	},
        {
        	groups = {
	           	{group = "g_named_crystals", chance = 10000000}
        },
    		lootChance = 10000000
        },
        },
	weapons = {"dark_jedi_weapons_gen3"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(forcepowermaster,lightsabermaster,forcewielder)

}

CreatureTemplates:addCreatureTemplate(imp_pvp, "imp_pvp")
