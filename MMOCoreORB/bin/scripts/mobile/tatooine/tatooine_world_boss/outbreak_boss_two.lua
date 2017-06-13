outbreak_boss_two = Creature:new {
	customName = "<<< Subject Two >>>",
	socialGroup = "self",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 35.00,
	damageMin = 6000,
	damageMax = 8000,
	specialDamageMult = 5.0,
	baseXp = 0,
	baseHAM = 1500000,
	baseHAMmax = 1500000,
	armor = 3,
	resists = {200,200,200,200,200,200,200,200,200},
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
	scale = 5.0,

	templates = {"object/mobile/outbreak_undead_boss_f_nightsister_03.iff"},
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
				{group = "g_named_crystals", chance = 10000000}
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
      				{group = "av_21_pp", chance = 10000000}
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
				{group = "krayt_tissue_rare", chance = 10000000}
     },
			        lootChance = 10000000
     },
     {
			 groups = {
				 {group = "weapons_all", chance = 10000000}
     },
			          lootChance = 10000000
     },
     {
        		 groups = {
          			 {group = "wearables_rare", chance = 10000000}
     },
           		         lootChance = 10000000
     },
     {
          		 groups = {
            			 {group = "acklay", chance = 10000000}
     },
          		          lootChance = 10000000
     },
     {
          		groups = {
            			{group = "acklay", chance = 10000000}
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
            			{group = "fire_breathing_spider", chance = 10000000}
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
            			{group = "saberhand26", chance = 10000000}
    },
              			lootChance = 10000000
    },
    {
              		groups = {
            			{group = "skill_buffs", chance = 10000000}
    },
              		        lootChance = 10000000
    },
    {
              		groups = {
            			{group = "stun_weapons", chance = 5000000},
				{group = "stun_ranged", chance = 5000000}
    },
              		lootChance = 10000000
    },
    {
              		groups = {
            			{group = "stun_weapons", chance = 5000000},
				{group = "stun_ranged", chance = 5000000}
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
    		{"mediumdisease","DiseaseChance=100"},
		{"creatureareapoison","PoisonChance=100"},
		{"strongpoison","PoisonChance=100"},
		{"creatureareaattack","StateAccuracyBonus=100"},
    		{"creatureareadisease","DiseaseChance=100"},
    		{"creatureareableeding","BleedChance=100"}
	}
}

CreatureTemplates:addCreatureTemplate(outbreak_boss_two, "outbreak_boss_two")
