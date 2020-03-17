
outbreak_mini_boss = Creature:new {
	customName = "Inquisitor Eibmoz",
	--objectName = "",
	--randomNameType = NAME_GENERIC_TAG,
	socialGroup = "outbreak_townsperson",
	faction = "",
	level = 320,
	chanceHit = 35.00,
	damageMin = 1500,
	damageMax = 3300,
	baseXp = 28450,
	baseHAM = 240000,
	baseHAMmax = 300000,
	armor = 3,
	resists = {195,195,195,195,195,195,195,195,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 10,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 2,

	templates = {"object/mobile/outbreak_undead_imperial_inquisitor_human_male_03.iff"},
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
	reactionStf = "",
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
	},
}
CreatureTemplates:addCreatureTemplate(outbreak_mini_boss, "outbreak_mini_boss")



