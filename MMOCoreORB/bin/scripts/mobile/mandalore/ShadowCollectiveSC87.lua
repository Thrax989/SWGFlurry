shadow_collective_sc87 = Creature:new {
	objectName = "",
	customName = "SC-87",	
	socialGroup = "death_watch",
	pvpFaction = "death_watch",
	faction = "",
	level = 300,
	chanceHit = 75.00,
	damageMin = 1750,
	damageMax = 3750,
	baseXp = 19000,
	baseHAM = 1000000,
	baseHAMmax = 1250000,
	armor = 3,
	resists = {50,50,50,50,50,50,50,50,35},--kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
	diet = NONE,

	templates = {"object/mobile/ig_88.iff"},
	scale = 1.5,
	lootGroups = {
		{
	groups = {
		{group = "armor_attachments", chance = 5000000},
                {group = "clothing_attachments", chance = 5000000}
    },
		lootChance = 10000000
    },
    {
      	 groups = {
        	{group = "clothing_attachments", chance = 5000000},
        	{group = "armor_attachments", chance = 5000000}
    },
      		lootChance = 10000000
    },
    {
      	 groups = {
        	{group = "clothing_attachments", chance = 5000000},
        	{group = "armor_attachments", chance = 5000000}
    },
      		lootChance = 10000000
    },
    {
      	 groups = {
        	{group = "clothing_attachments", chance = 5000000},
        	{group = "armor_attachments", chance = 5000000}
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
        	{group = "geonosian_common", chance = 5000000},
        	{group = "apocalypse", chance = 5000000}
    },
      		lootChance = 10000000
    },
    {
      	 groups = {
        	{group = "krayt_dragon_common2", chance = 10000000},
    },
      		lootChance = 10000000
    },
    {
      	 groups = {
        	{group = "nge2", chance = 10000000}
    },
      		lootChance = 5000000
    },
    {
      	 groups = {
        	{group = "saberhand27", chance = 10000000}
    },
      		lootChance = 5000000
    },
    },
	weapons = {"dark_jedi_weapons_gen3"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(shadow_collective_sc87, "shadow_collective_sc87")
