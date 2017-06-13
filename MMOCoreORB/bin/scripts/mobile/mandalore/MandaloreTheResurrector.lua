mandalore_the_resurrector = Creature:new {
	objectName = "",
	customName = "Mandalore the Resurrector",
	socialGroup = "death_watch",
	pvpFaction = "death_watch",
	faction = "",
	level = 300,
	chanceHit = 100,
	damageMin = 3000,
	damageMax = 4000,
	baseXp = 20948,
	baseHAM = 1250000,
	baseHAMmax = 1500000,
	armor = 3,
	resists = {80,80,80,80,80,80,80,80,65},
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
	creatureBitmask = KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_death_watch_red.iff"},
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
		{"intimidationattack","IntimidationChance=100"},
		{"creatureareaattack","StateAccuracyBonus=100"},
    		{"creatureareableeding","BleedChance=100"}
	}
}

CreatureTemplates:addCreatureTemplate(mandalore_the_resurrector, "mandalore_the_resurrector")
