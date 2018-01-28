custom_jawa_boss = Creature:new {
	customName = "<<< Ootini >>>",
	socialGroup = "jawa",
	pvpFaction = "",
	faction = "jawa",
	level = 320,
	chanceHit = 35.00,
	damageMin = 1700,
	damageMax = 3500,
	baseXp = 28450,
	baseHAM = 240000,
	baseHAMmax = 320000,
	armor = 3,
	resists = {195,195,195,195,195,195,195,195,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 10,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 2.5,

	templates = {"object/mobile/jawa_male.iff"},
  lootGroups = {
	{
			groups = {
        			{group = "tierthree", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
   },
			        lootChance = 10000000
   },
   {
			groups = {
        			{group = "tierthree", chance = 5000000},
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
      			        lootChance = 5000000
   },
   {
      			groups = {
        			{group = "backpacks_b01", chance = 2500000},
       	 			{group = "armor_attachments", chance = 5000000},
        			 {group = "clothing_attachments", chance = 2500000}
   },
      			        lootChance = 5000000
   },
   {
      			groups = {
        			{group = "armor_attachments", chance = 5000000},
        			{group = "clothing_attachments", chance = 5000000}
   },
      			        lootChance = 5000000
   },
   {
      			groups = {
        			{group = "tierthree", chance = 7500000},
        			{group = "tierdiamond", chance = 2500000}
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
     			        lootChance = 5000000
   },
   {
     			groups = {
        			{group = "armor_attachments", chance = 5000000},
        			{group = "clothing_attachments", chance = 5000000}
   },
      			       	 lootChance = 5000000
   },
  
    
    			
    },
    
	weapons = {"pirate_weapons_heavy"},
	attacks = merge(brawlermaster,marksmanmaster)
	
		
	
}

CreatureTemplates:addCreatureTemplate(custom_jawa_boss, "custom_jawa_boss")
