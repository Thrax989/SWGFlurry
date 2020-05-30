event_dewback = Creature:new {
	customName = "Massive Escaped Dewback",
	socialGroup = "dewback",
	faction = "",
	level = 100,
	chanceHit = 0.27,
	damageMin = 70,
	damageMax = 75,
	baseXp = 235,
	baseHAM = 120000,
	baseHAMmax = 120000,
	armor = 1,
	resists = {120,5,110,5,-1,-1,-1,-1,-1},
	meatType = "meat_reptilian",
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
	templates = {"object/mobile/dewback_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/dewback_hue.iff",
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

CreatureTemplates:addCreatureTemplate(event_dewback, "event_dewback")
