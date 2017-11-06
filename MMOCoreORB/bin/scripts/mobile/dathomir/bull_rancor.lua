bull_rancor = Creature:new {
	objectName = "@mob/creature_names:bull_rancor",
	socialGroup = "rancor",
	faction = "",
	level = 65,
	chanceHit = 0.6,
	damageMin = 455,
	damageMax = 620,
	baseXp = 6288,
	baseHAM = 11000,
	baseHAMmax = 14000,
	armor = 1,
	resists = {135,160,15,180,180,180,15,15,-1},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 900,
	boneType = "bone_mammal",
	boneAmount = 850,
	milk = 0,
	tamingChance = 0.01,
	ferocity = 11,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/bull_rancor.iff"},
	controlDeviceTemplate = "object/intangible/pet/rancor_hue.iff",
	scale = 1.1,
	
--Creature Template Rancor
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
				{group = "rancor_common", chance = 8000000},
				{group = "skill_buffs", chance = 2000000},
				
		},
			lootChance = 2960000
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareadisease",""},
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(bull_rancor, "bull_rancor")
