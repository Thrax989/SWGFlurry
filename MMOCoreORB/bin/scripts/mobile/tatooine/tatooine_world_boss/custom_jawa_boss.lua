custom_jawa_boss = Creature:new {
	customName = "<<< Ootini >>>",
	socialGroup = "jawa",
	pvpFaction = "",
	faction = "jawa",
	level = 300,
	chanceHit = 35.00,
	damageMin = 1500,
	damageMax = 3300,
	specialDamageMult = 5.0,
	baseXp = 0,
	baseHAM = 150000,
	baseHAMmax = 150000,
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
	scale = 3.0,

	templates = {"object/mobile/jawa_male.iff"},
  lootGroups = {
	{
			groups = {
        			{group = "potted_plants_small", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
   },
			        lootChance = 10000000
   },
   {
			groups = {
        			{group = "potted_plants_large", chance = 5000000},
        			{group = "armor_attachments", chance = 2500000},
        			{group = "clothing_attachments", chance = 2500000}
   },
      			        lootChance = 10000000
   },
   {
      			groups = {
        			{group = "backpacks_b02", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
   },
      			        lootChance = 10000000
   },
   {
      			groups = {
        			{group = "backpacks_b01", chance = 2500000},
       	 			{group = "armor_attachments", chance = 5000000},
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
        			{group = "nge_house_loot_deed_01", chance = 2500000},
        			{group = "nge_house_loot_deed_windowed", chance = 7500000}
   },
      			        lootChance = 10000000
   },
   {
     	 		 groups = {
        			 {group = "jawa_common", chance = 5000000},
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
  
    
    			
    },
    
	weapons = {"jawa_warlord_weapons"},
	conversationTemplate = "",
	attacks = merge(commandomaster,marksmanmaster,fencermaster,brawlermaster,brawlermaster,riflemanmaster)
		
	
}

CreatureTemplates:addCreatureTemplate(custom_jawa_boss, "custom_jawa_boss")