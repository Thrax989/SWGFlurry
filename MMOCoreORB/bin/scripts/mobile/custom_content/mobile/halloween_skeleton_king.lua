halloween_skeleton_king = Creature:new {
	customName = "Skeleton King",
	--objectName = "",
	--randomNameType = NAME_GENERIC_TAG,
	socialGroup = "townsperson",
	faction = "",
	level = 300,
	chanceHit = 30,
	damageMin = 1645,
	damageMax = 3000,
	specialDamageMult = 7.5,
	baseXp = 28549,
	baseHAM = 385000,
	baseHAMmax = 471000,
	armor = 3,
	resists = {75,75,75,75,75,75,75,75,75},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/halloween_skeleton_1.iff"},
  	outfit = "custom_halloween_outfit",
	scale = 2.0,
 lootGroups = {
	{
			groups = {
        			{group = "potted_plants_small", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
   	},
			        lootChance = 5000000
  	},
  	{
			groups = {
        			{group = "potted_plants_large", chance = 5000000},
        			{group = "armor_attachments", chance = 2500000},
        			{group = "clothing_attachments", chance = 2500000}
   	},
      			        lootChance = 5000000
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
	reactionStf = "@npc_reaction/slang",
	attacks = merge(tkamaster,brawlermaster,fencermaster,swordsmanmaster,pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(halloween_skeleton_king, "halloween_skeleton_king")

