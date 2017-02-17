giant_cavern_spider_recluse = Creature:new {
	objectName = "@mob/creature_names:gaping_spider_recluse_giant",
	socialGroup = "spider_nightsister",
	faction = "spider_nightsister",
	level = 85,
	chanceHit = 3.1,
	damageMin = 775,
	damageMax = 1260,
	baseXp = 11015,
	baseHAM = 33500,
	baseHAMmax = 33500,
	armor = 0,
	resists = {160,160,160,0,0,0,0,0,-1},
	meatType = "meat_insect",
	meatAmount = 80,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/gaping_spider_recluse.iff"},
	scale = 2.0,
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "wearables_all", chance = 5000000},
				{group = "loot_kit_parts", chance = 2500000},
				{group = "tailor_components", chance = 2500000}
			},
			lootChance = 10000000
		},
		},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo",""},
		{"strongpoison",""}
	}
}

CreatureTemplates:addCreatureTemplate(giant_cavern_spider_recluse, "giant_cavern_spider_recluse")
