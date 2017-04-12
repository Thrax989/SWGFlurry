engineer_boss_second = Creature:new {
	customName = "Hansgar",
	socialGroup = "mustafar",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 80.00,
	damageMin = 1000,
	damageMax = 3000,
	baseXp = 0,
	baseHAM = 800000,
	baseHAMmax = 800000,
	armor = 3,
	resists = {95,95,95,95,95,95,95,95,90},
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
	creatureBitmask = PACK + STALKER + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
  	scale = 1.5,

	templates = {"object/mobile/som/must_milo_mensix.iff"},
	
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
		{group = "wearables_all", chance = 5000000},
		{group = "loot_kit_parts", chance = 5000000}
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
        	{group = "av_21_scheme", chance = 10000000},
    },
      		lootChance = 8000000
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
    },
	weapons = {"mixed_force_weapons"},
	reactionStf = "@npc_reaction/fancy",
	attacks = merge(brawlermaster,fencermaster,brawlermaster,swordsmanmaster,pikemanmaster,tkamid)

}

CreatureTemplates:addCreatureTemplate(engineer_boss_second, "engineer_boss_second")
