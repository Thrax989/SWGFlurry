event_bolma = Creature:new {
	customName = "Massive Escaped Bolma",
	socialGroup = "bolma",
	faction = "",
	level = 100,
	chanceHit = 0.37,
	damageMin = 260,
	damageMax = 270,
	baseXp = 2730,
	baseHAM = 120000,
	baseHAMmax = 120000,
	armor = 1,
	resists = {135,120,15,-1,-1,-1,-1,-1,-1},
	meatType = "meat_wild",
	meatAmount = 100000,
	hideType = "hide_leathery",
	hideAmount = 100000,
	boneType = "bone_mammal",
	boneAmount = 100000,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	templates = {"object/mobile/bolma_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/bolma_hue.iff",
	scale = 4,

--Creature Default Loot Template
	lootGroups = {
		{
			groups = {
				{group = "tierdiamond", chance = 10000000}			
		},
			lootChance = 10000
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
		{"",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(event_bolma, "event_bolma")
