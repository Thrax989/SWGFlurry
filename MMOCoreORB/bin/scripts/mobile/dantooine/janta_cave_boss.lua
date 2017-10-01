janta_cave_boss = Creature:new {
	  customName = "<<< Janta King >>>",
	  socialGroup = "janta_tribe",
	  faction = "janta_tribe",
	  level = 300,
	  chanceHit = 60.00,
	  damageMin = 2000,
	  damageMax = 3000,
	  specialDamageMult = 3.0,
	  baseXp = 0,
	  baseHAM = 1500000,
	  baseHAMmax = 1500000,
	  armor = 3,
	  resists = {90,90,90,90,90,90,90,90,-1},
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
	  Scale = 2.0,	

	templates = {"object/mobile/tusken_raider.iff"},
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
weapons = {"dark_jedi_weapons_gen4"},
reactionStf = "@npc_reaction/fancy",
attacks = merge(lightsabermaster,forcewielder,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(janta_cave_boss, "janta_cave_boss")