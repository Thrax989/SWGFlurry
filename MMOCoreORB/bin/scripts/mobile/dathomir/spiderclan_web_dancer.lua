spiderclan_web_dancer = Creature:new {
	objectName = "@mob/creature_names:spider_nightsister_web_dancer",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "spider_nightsister",
	faction = "spider_nightsister",
	level = 87,
	chanceHit = 0.75,
	damageMin = 520,
	damageMax = 750,
	baseXp = 8315,
	baseHAM = 12000,
	baseHAMmax = 15000,
	armor = 1,
	resists = {100,95,100,65,100,65,90,100,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	templates = {"object/mobile/dressed_dathomir_spider_nightsister_web_dancer.iff"},

	--NPC with AA/CA Template SMC Generic
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000},
		},
			lootChance = 500000 

		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000}
		},
			lootChance = 100000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
		},
			lootChance = 100000
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
			lootChance = 50000
		},
		
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,pikemanmaster,forcewielder,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(spiderclan_web_dancer, "spiderclan_web_dancer")
