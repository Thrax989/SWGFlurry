outbreak_boss = Creature:new {
	customName = "Subject One",
	socialGroup = "self",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 100.00,
	damageMin = 5000,
	damageMax = 6000,
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

	templates = {
				"object/mobile/outbreak_undead_deathtrooper_01_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_02_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_03_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_04_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_05_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_06_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_07_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_08_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_09_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_10_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_11_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_12_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_13_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_14_m.iff"
				},
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
      				{group = "g_ep3_chiss_poacher_backpack", chance = 10000000}
    		},
    			lootChance = 10000000
  		},
  		{
    			groups = {
      				{group = "av_21_scheme", chance = 10000000}
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
				{group = "looted_container", chance = 10000000}
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

CreatureTemplates:addCreatureTemplate(outbreak_boss, "outbreak_boss")
