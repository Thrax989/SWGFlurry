enraged_rancor = Creature:new {
	objectName = "@mob/creature_names:enraged_rancor",
	socialGroup = "rancor",
	faction = "",
	level = 80,
	chanceHit = 0.75,
	damageMin = 570,
	damageMax = 850,
	baseXp = 7668,
	baseHAM = 12000,
	baseHAMmax = 15000,
	armor = 1,
	resists = {30,160,30,200,200,200,30,30,-1},
	meatType = "meat_carnivore",
	meatAmount = 950,
	hideType = "hide_leathery",
	hideAmount = 878,
	boneType = "bone_mammal",
	boneAmount = 778,
	milk = 0,
	tamingChance = 0,
	ferocity = 12,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/rancor_hue.iff"},
	scale = 1.15,
	
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
		{"knockdownattack",""},
		{"creatureareaattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(enraged_rancor, "enraged_rancor")
