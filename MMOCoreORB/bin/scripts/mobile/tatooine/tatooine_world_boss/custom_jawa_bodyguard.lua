custom_jawa_bodyguard = Creature:new {
	
	customName = "Jawa Bodyguard",
	socialGroup = "jawa",
	faction = "jawa",
	level = 150,
	chanceHit = 10.00,
	damageMin = 500,
	damageMax = 1100,
	baseXp = 0,
	baseHAM = 35000,
	baseHAMmax = 49000,
	armor = 1,
	resists = {80,80,80,80,80,80,80,80,-1},
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
	creatureBitmask = PACK + STALKER + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.5,

	templates = {"object/mobile/jawa_male.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 5000000},
				{group = "jawa_common", chance = 1500000},
				{group = "tailor_components", chance = 1800000},
				{group = "loot_kit_parts", chance = 1500000},
				{group = "color_crystals", chance = 200000}
	},
	},
	{
      			groups = {
        			{group = "armor_attachments", chance = 5000000},
       	 			{group = "clothing_attachments", chance = 5000000}
   	},
     			        lootChance = 5000000
   	},
	},
	weapons = {"jawa_warlord_weapons"},
	conversationTemplate = "",
	attacks = merge(commandomaster,marksmanmaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(custom_jawa_bodyguard, "custom_jawa_bodyguard")
