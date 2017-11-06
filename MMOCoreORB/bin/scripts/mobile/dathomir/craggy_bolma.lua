craggy_bolma = Creature:new {
	objectName = "@mob/creature_names:craggy_bolma",
	socialGroup = "bolma",
	faction = "",
	level = 47,
	chanceHit = 0.47,
	damageMin = 375,
	damageMax = 460,
	baseXp = 4643,
	baseHAM = 10000,
	baseHAMmax = 13000,
	armor = 1,
	resists = {125,140,0,0,-1,0,0,-1,-1},
	meatType = "meat_wild",
	meatAmount = 500,
	hideType = "hide_leathery",
	hideAmount = 550,
	boneType = "bone_mammal",
	boneAmount = 500,
	milk = 0,
	tamingChance = 0.15,
	ferocity = 5,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	templates = {"object/mobile/bolma.iff"},
	controlDeviceTemplate = "object/intangible/pet/bolma_hue.iff",
	scale = 1.3,

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

CreatureTemplates:addCreatureTemplate(craggy_bolma, "craggy_bolma")
