janta_chieftain = Creature:new {
	customName = "<<< Janta Chieftain >>>",
	socialGroup = "janta_tribe",
	faction = "janta_tribe",
	level = 300,
	chanceHit = 60.00,
	damageMin = 1250,
	damageMax = 1750,
	specialDamageMult = 2.0,
	baseXp = 27849,
	baseHAM = 800000,
	baseHAMmax = 800000,
	armor = 1,
	resists = {70,70,70,70,70,70,70,70,80,-1},
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
	scale = 2.0,

	templates = {"object/mobile/dantari_male.iff"},
	lootGroups = {
	{
			groups = {
			{group = "armor_attachments", chance = 1000000},
			{group = "clothing_attachments", chance = 1000000},
			{group = "power_crystals", chance = 4000000},
			{group = "potted_plants_small", chance = 4000000}
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
        			{group = "crafted_rugs", chance = 5000000},
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
        			{group = "janta_common", chance = 9000000},
        			{group = "junk", chance = 1000000}
  	},
      			lootChance = 10000000
  	},
},
weapons = {"unarmed_weapons"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(tkamaster,swordsmanmaster,fencermaster,pikemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(janta_chieftain, "janta_chieftain")