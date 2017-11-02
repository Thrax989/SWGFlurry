mountain_squill_guardian = Creature:new {
	objectName = "@mob/creature_names:mountain_squill_guardian",
	socialGroup = "squill",
	faction = "",
	level = 40,
	chanceHit = 0.42,
	damageMin = 325,
	damageMax = 360,
	baseXp = 3915,
	baseHAM = 8900,
	baseHAMmax = 10900,
	armor = 0,
	resists = {160,160,25,-1,25,25,25,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 3,
	hideType = "hide_leathery",
	hideAmount = 4,
	boneType = "bone_mammal",
	boneAmount = 2,
	milk = 0,
	tamingChance = 0,
	ferocity = 10,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	templates = {"object/mobile/mountain_squill.iff"},
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
		{"intimidationattack",""},
		{"knockdownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(mountain_squill_guardian, "mountain_squill_guardian")
