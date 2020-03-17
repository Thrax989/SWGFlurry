custom_nerf_herd = Creature:new {
	customName = "Nerf Herd Beast",
	socialGroup = "nerf",
	faction = "",
	level = 100,
	chanceHit = 1.00,
	damageMin = 600,
	damageMax = 990,
	baseXp = 24000,
	baseHAM = 15000,
	baseHAMmax = 24000,
	armor = 2,
	resists = {40,170,40,200,200,200,40,40,-1},
	meatType = "meat_wild",
	meatAmount = 150,
	hideType = "hide_leathery",
	hideAmount = 160,
	boneType = "bone_mammal",
	boneAmount = 150,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	templates = {"object/mobile/nerf.iff"},
	lootGroups = {
	{
			groups = {
				{group = "junk", chance = 5000000},
				{group = "loot_kit_parts", chance = 2000000},
				{group = "color_crystals", chance = 1500000},
				{group = "power_crystals", chance = 1500000}

	},
	},
	{
      			groups = {
        			{group = "armor_attachments", chance = 5000000},
       	 			{group = "clothing_attachments", chance = 5000000}
   	},
     			        lootChance = 10000000
   	},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"blindattack",""},
		{"knockdownattack",""},
		{"creatureareaknockdown",""}
	}
}

CreatureTemplates:addCreatureTemplate(custom_nerf_herd, "custom_nerf_herd")

