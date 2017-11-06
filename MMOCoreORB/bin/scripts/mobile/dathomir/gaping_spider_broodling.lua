gaping_spider_broodling = Creature:new {
	objectName = "@mob/creature_names:gaping_spider_broodling",
	socialGroup = "spider",
	faction = "",
	level = 8,
	chanceHit = 0.27,
	damageMin = 70,
	damageMax = 75,
	baseXp = 235,
	baseHAM = 405,
	baseHAMmax = 495,
	armor = 0,
	resists = {0,0,10,0,0,0,0,-1,-1},
	meatType = "meat_insect",
	meatAmount = 5,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 5,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/gaping_spider_broodling.iff"},
	scale = 0.75,

--Creature Reduced Loot Template
	lootGroups = {
		{
			groups = {
				{group = "artifact", chance = 10000000}			
		},
			lootChance = 100000
		},
		{
			groups = {
				{group = "tierone", chance = 10000000}
		},
			lootChance = 50000
		},
		{
			groups = {
				{group = "tiertwo", chance = 10000000}
		},
			lootChance = 25000
		},
		
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"",""},
		{"mildpoison",""}
	}
}

CreatureTemplates:addCreatureTemplate(gaping_spider_broodling, "gaping_spider_broodling")
