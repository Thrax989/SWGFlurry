outbreak_rancor_boss = Creature:new {
	customName = "<< Mutant Rancor >>",
	socialGroup = "outbreak_townsperson",
	pvpFaction = "",
	faction = "",
	level = 320,
	chanceHit = 35.00,
	damageMin = 1500,
	damageMax = 3300,
	baseXp = 28450,
	baseHAM = 410000,
	baseHAMmax = 500000,
	armor = 3,
	resists = {195,195,195,195,195,195,195,195,-1},
	meatType = "meat_herbivore",
	meatAmount = 1000,
	hideType = "hide_bristley",
	hideAmount = 950,
	boneType = "bone_mammal",
	boneAmount = 905,
	milk = 0,
	tamingChance = 0.0,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.6,

	templates = {"object/mobile/wod_mutant_rancor_boss.iff"},
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
        			{group = "nge_house_loot_deed_01", chance = 7500000},
        			{group = "nge_house_loot_deed_windowed", chance = 2500000}
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
				{group = "artifact", chance = 10000000}			
	},
			lootChance = 1000000
	},
	{
			groups = {
				{group = "tierone", chance = 10000000}
	},
			lootChance = 750000
	},
	{
			groups = {
				{group = "tiertwo", chance = 10000000}
	},
			lootChance = 100000
	},
	{
			groups = {
				{group = "tierthree", chance = 10000000}
	},
			lootChance = 10000000
	},
	{
			groups = {
				{group = "halloween", chance = 10000000}
	},
			lootChance = 10000000
	},

    
    			
    },
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=50"},
 		{"creatureareaknockdown","stateAccuracyBonus=50"},
		{"knockdownattack","KnockdownChance=50"},
		{"creatureareaknockdown","KnockdownChance=50"},
		{"dizzyattack","DizzyChance=50"},
		{"stunattack","StunChance=50"},
		{"intimidationattack","IntimidationChance=50"},
		{"creatureareaattack",""},
		{"creatureareadisease",""},
 	}
}

CreatureTemplates:addCreatureTemplate(outbreak_rancor_boss, "outbreak_rancor_boss")
