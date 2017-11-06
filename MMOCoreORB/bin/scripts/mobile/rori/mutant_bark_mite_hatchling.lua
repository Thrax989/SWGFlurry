mutant_bark_mite_hatchling = Creature:new {
	objectName = "@mob/creature_names:mutant_bark_mite_hatchling",
	socialGroup = "mite",
	faction = "",
	level = 10,
	chanceHit = 0.27,
	damageMin = 80,
	damageMax = 90,
	baseXp = 430,
	baseHAM = 1500,
	baseHAMmax = 1900,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "meat_insect",
	meatAmount = 10,
	hideType = "hide_scaley",
	hideAmount = 8,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 1,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/bark_mite_hatchling.iff"},
	scale = .9,

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
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"blindattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(mutant_bark_mite_hatchling, "mutant_bark_mite_hatchling")
