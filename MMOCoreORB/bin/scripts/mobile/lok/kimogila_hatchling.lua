kimogila_hatchling = Creature:new {
	objectName = "@mob/creature_names:kimogila_hatchling",
	socialGroup = "kimogila",
	faction = "",
	level = 22,
	chanceHit = 0.33,
	damageMin = 210,
	damageMax = 220,
	baseXp = 2006,
	baseHAM = 4100,
	baseHAMmax = 5000,
	armor = 0,
	resists = {10,10,10,155,10,10,200,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 700,
	hideType = "hide_leathery",
	hideAmount = 625,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/kimogila_hatchling.iff"},
	scale = 0.5,

	--Creature Kimo Loot Template
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
		},
		{
	        	groups = {
				{group = "kimogila_common", chance = 10000000}
		},
			lootChance = 3460000
		},
	},
	weapons = {"creature_spit_small_yellow"},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(kimogila_hatchling, "kimogila_hatchling")
