bolma_calf = Creature:new {
	objectName = "@mob/creature_names:bolma_calf",
	socialGroup = "bolma",
	faction = "",
	level = 19,
	chanceHit = 0.33,
	damageMin = 180,
	damageMax = 190,
	baseXp = 1426,
	baseHAM = 5000,
	baseHAMmax = 6100,
	armor = 0,
	resists = {5,5,5,5,5,5,5,5,-1},
	meatType = "meat_wild",
	meatAmount = 175,
	hideType = "hide_leathery",
	hideAmount = 160,
	boneType = "bone_mammal",
	boneAmount = 150,
	milkType = "milk_wild",
	milk = 80,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	templates = {"object/mobile/bolma_calf.iff"},
	scale = 0.65,

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
	}
}

CreatureTemplates:addCreatureTemplate(bolma_calf, "bolma_calf")
