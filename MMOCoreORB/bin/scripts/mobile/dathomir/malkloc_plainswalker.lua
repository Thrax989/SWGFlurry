malkloc_plainswalker = Creature:new {
	objectName = "@mob/creature_names:malkloc_plainswalker",
	socialGroup = "malkloc",
	faction = "",
	level = 84,
	chanceHit = 0.7,
	damageMin = 535,
	damageMax = 780,
	baseXp = 7945,
	baseHAM = 29000,
	baseHAMmax = 36000,
	armor = 1,
	resists = {200,150,25,-1,-1,-1,25,200,-1},
	meatType = "meat_herbivore",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 1000,
	boneType = "bone_mammal",
	boneAmount = 1000,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/malkloc_hue.iff"},
	scale = 1.2,

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
		{"dizzyattack",""},
		{"creatureareaknockdown",""}
	}
}

CreatureTemplates:addCreatureTemplate(malkloc_plainswalker, "malkloc_plainswalker")
