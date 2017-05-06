hellucard_boss = Creature:new {
	customName = "<<< Hellucard >>>",
	socialGroup = "kun",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 100.00,
	damageMin = 4000,
	damageMax = 6000,
	specialDamageMult = 10.0,
	baseXp = 0,
	baseHAM = 2000000,
	baseHAMmax = 2000000,
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
	scale = 1.2,

	templates = {"object/mobile/mos_taike_guard_old.iff"},
  	outfit = "custom_armor_c08_outfit",
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
        			{group = "pearls_flawless", chance = 5000000},
       	 			{group = "armor_attachments", chance = 2500000},
        			{group = "clothing_attachments", chance = 2500000}
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
				{group = "g_named_crystals", chance = 10000000}
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
				{group = "krayt_tissue_rare", chance = 10000000}
     },
			        lootChance = 10000000
     },
     {
		         groups = {
				{group = "saberhand26", chance = 10000000}
     },
			         lootChance = 10000000
     },
     {
			 groups = {
				 {group = "saberhand26", chance = 10000000}
     },
			          lootChance = 10000000
     },
     {
        		 groups = {
          			 {group = "saberhand27", chance = 10000000}
     },
           		         lootChance = 10000000
     },
     {
          		 groups = {
            			 {group = "nge1", chance = 5000000},
                   		 {group = "nge2", chance = 5000000}
     },
          		          lootChance = 10000000
     },
     {
             		groups = {
                 		{group = "nge3", chance = 10000000}
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
          			 {group = "nectar_buff_f01", chance = 10000000}
    },
            		         lootChance = 10000000
    },
    {
          		groups = {
            			{group = "hellucard_neck", chance = 10000000}
    },
              		        lootChance = 100000
    },
    {
          		groups = {
            			{group = "skill_buffs", chance = 10000000}
    },
              		        lootChance = 10000000
    },
    {
        		 groups = {
          			 {group = "saberhand27", chance = 10000000}
    },
           		         lootChance = 10000000
    },
    },

	weapons = {"dark_jedi_weapons_gen4"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(lightsabermaster,forcepowermaster,forcewielder)

}

CreatureTemplates:addCreatureTemplate(hellucard_boss, "hellucard_boss")
