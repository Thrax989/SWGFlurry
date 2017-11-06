grizzled_dewback = Creature:new {
	objectName = "@mob/creature_names:grizzled_dewback",
	socialGroup = "dewback",
	faction = "",
	level = 27,
	chanceHit = 0.35,
	damageMin = 270,
	damageMax = 280,
	baseXp = 2730,
	baseHAM = 7700,
	baseHAMmax = 9400,
	armor = 0,
	resists = {135,120,10,140,-1,-1,-1,-1,-1},
	meatType = "meat_reptilian",
	meatAmount = 365,
	hideType = "hide_leathery",
	hideAmount = 285,
	boneType = "bone_mammal",
	boneAmount = 210,
	milk = 0,
	tamingChance = 0,
	ferocity = 6,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/dewback.iff"},
	scale = 1.15,

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
		{"knockdownattack",""},
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(grizzled_dewback, "grizzled_dewback")
