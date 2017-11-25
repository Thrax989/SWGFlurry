wolf_kima = Creature:new {
	objectName = "@mob/creature_names:wolf_kima",
	socialGroup = "self",
	faction = "",
	level = 19,
	chanceHit = 0.32,
	damageMin = 190,
	damageMax = 200,
	baseXp = 1426,
	baseHAM = 2900,
	baseHAMmax = 3500,
	armor = 0,
	resists = {115,110,-1,-1,5,5,-1,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 10,
	hideType = "hide_bristley",
	hideAmount = 11,
	boneType = "bone_mammal",
	boneAmount = 10,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/kima.iff"},
	controlDeviceTemplate = "object/intangible/pet/kima_hue.iff",
	scale = 1.1,

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
		{"blindattack",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(wolf_kima, "wolf_kima")
