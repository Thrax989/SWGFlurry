mountain_squill_hunter = Creature:new {
	objectName = "@mob/creature_names:mountain_squill_hunter",
	socialGroup = "squill",
	faction = "",
	level = 25,
	chanceHit = 0.35,
	damageMin = 210,
	damageMax = 220,
	baseXp = 2543,
	baseHAM = 5900,
	baseHAMmax = 7200,
	armor = 0,
	resists = {135,135,10,10,-1,-1,-1,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 2,
	hideType = "hide_leathery",
	hideAmount = 2,
	boneType = "bone_mammal",
	boneAmount = 1,
	milk = 0,
	tamingChance = 0,
	ferocity = 6,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/mountain_squill.iff"},
	scale = 1.05,

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
		{"intimidationattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(mountain_squill_hunter, "mountain_squill_hunter")
