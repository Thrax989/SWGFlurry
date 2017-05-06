fallen_jedi_h01 = Creature:new {
	customName = "Fallen Jedi of Corusant",
	socialGroup = "kun",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 100.00,
	damageMin = 800,
	damageMax = 1000,
	specialDamageMult = 2.0,
	baseXp = 0,
	baseHAM = 300000,
	baseHAMmax = 300000,
	armor = 2,
	resists = {65,65,65,65,65,65,65,65,-1},
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
  outfit = "custom_armor_c09_outfit",
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
				{group = "saberhand26", chance = 10000000}
     },
			         lootChance = 2000000
     },
     {
			 groups = {
				 {group = "saberhand26", chance = 10000000}
     },
			          lootChance = 2000000
     },
     {
        		 groups = {
          			 {group = "saberhand27", chance = 10000000}
     },
           		         lootChance = 5000000
     },
     {
          		 groups = {
            			 {group = "nge1", chance = 5000000},
                   		 {group = "nge2", chance = 5000000}
     },
          		          lootChance = 2000000
     },
     {
             		groups = {
                 		{group = "nge3", chance = 10000000}
     },
                     		lootChance = 2000000
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
    },

	weapons = {"dark_jedi_weapons_gen4"},
	reactionStf = "@npc_reaction/military",
	attacks = merge(lightsabermaster,forcepowermaster,forcewielder)

}

CreatureTemplates:addCreatureTemplate(fallen_jedi_h01, "fallen_jedi_h01")
