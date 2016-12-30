gr_womp_rat = Creature:new {
	customName = "Womprat",
	socialGroup = "rat",
	faction = "",
	level = 80,
	chanceHit = 0.98,
	damageMin = 350,
	damageMax = 450,
	baseXp = 856,
	baseHAM = 12000,
	baseHAMmax = 16000,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "meat_wild",
	meatAmount = 165,
	hideType = "hide_leathery",
	hideAmount = 165,
	boneType = "bone_mammal",
	boneAmount = 165,
	milk = 0,
	tamingChance = 0.0000000,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER + KILLER,
	optionsBitmask = 0,
	diet = CARNIVORE,

	templates = {"object/mobile/womp_rat.iff"},
	--controlDeviceTemplate = "object/intangible/pet/womp_rat_hue.iff",
	lootGroups = {
				groups = {
				{group = "pistols", chance = 3333333},
				{group = "rifles", chance = 3333333},
				{group = "carbines", chance = 3333334}
			},
			lootChance = 100000000
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(gr_womp_rat, "gr_womp_rat")
