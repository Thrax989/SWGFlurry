gaping_spider_recluse_queen = Creature:new {
	objectName = "@mob/creature_names:gaping_spider_recluse_queen",
	socialGroup = "spider",
	faction = "",
	level = 68,
	chanceHit = 0.65,
	damageMin = 510,
	damageMax = 730,
	baseXp = 6563,
	baseHAM = 11000,
	baseHAMmax = 14000,
	armor = 0,
	resists = {145,165,145,190,-1,0,0,-1,-1},
	meatType = "meat_insect",
	meatAmount = 50,
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
	scale = 1.2,
	lootGroups = {},
	weapons = {"creature_spit_small_toxicgreen"},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison",""},
		{"strongpoison",""}
	}
}

CreatureTemplates:addCreatureTemplate(gaping_spider_recluse_queen, "gaping_spider_recluse_queen")
