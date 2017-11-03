singing_mountain_clan_rancor = Creature:new {
	objectName = "@mob/creature_names:singing_mountain_clan_rancor",
	socialGroup = "mtn_clan",
	faction = "mtn_clan",
	level = 55,
	chanceHit = 0.5,
	damageMin = 370,
	damageMax = 450,
	baseXp = 5281,
	baseHAM = 11000,
	baseHAMmax = 13000,
	armor = 1,
	resists = {130,160,5,200,200,200,5,5,-1},
	meatType = "meat_carnivore",
	meatAmount = 620,
	hideType = "hide_leathery",
	hideAmount = 510,
	boneType = "bone_mammal",
	boneAmount = 480,
	milk = 0,
	tamingChance = 0,
	ferocity = 10,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/rancor.iff"},
	scale = 1.05,
		
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
		{"",""},
		{"intimidationattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(singing_mountain_clan_rancor, "singing_mountain_clan_rancor")
