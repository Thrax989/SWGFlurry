spined_snake_recluse = Creature:new {
	objectName = "@mob/creature_names:spined_snake_recluse",
	socialGroup = "self",
	faction = "",
	level = 14,
	chanceHit = 0.3,
	damageMin = 160,
	damageMax = 170,
	baseXp = 609,
	baseHAM = 1000,
	baseHAMmax = 1200,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "meat_reptilian",
	meatAmount = 11,
	hideType = "hide_leathery",
	hideAmount = 5,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/spined_snake_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/spined_snake_hue.iff",

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
		{"stunattack",""},
		{"mediumpoison",""}
	}
}

CreatureTemplates:addCreatureTemplate(spined_snake_recluse, "spined_snake_recluse")
