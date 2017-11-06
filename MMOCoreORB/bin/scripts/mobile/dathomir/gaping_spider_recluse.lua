gaping_spider_recluse = Creature:new {
	objectName = "@mob/creature_names:gaping_spider_recluse",
	socialGroup = "spider",
	faction = "",
	level = 44,
	chanceHit = 0.46,
	damageMin = 390,
	damageMax = 490,
	baseXp = 4370,
	baseHAM = 9500,
	baseHAMmax = 11600,
	armor = 1,
	resists = {130,130,160,125,-1,-1,0,-1,-1},
	meatType = "meat_insect",
	meatAmount = 11,
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
	controlDeviceTemplate = "object/intangible/pet/gaping_spider_hue.iff",
	scale = 1.1,

--Creature Default Loot Template
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
		{
			groups = {
				{group = "tierthree", chance = 10000000}
		},
			lootChance = 10000
		}
	},
	weapons = {"creature_spit_small_toxicgreen"},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison",""},
		{"strongpoison",""}
	}
}

CreatureTemplates:addCreatureTemplate(gaping_spider_recluse, "gaping_spider_recluse")
