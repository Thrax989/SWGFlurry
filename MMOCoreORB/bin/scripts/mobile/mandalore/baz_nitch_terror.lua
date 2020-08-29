baz_nitch_terror = Creature:new {
	customName = "\\#00ff00<<< Baz Nitch Terror >>> \\#ff0000[lvl 100]",
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 100,
	chanceHit = 50.0,
	damageMin = 1000,
	damageMax = 2000,
	baseXp = 5000,
	baseHAM = 10000,
	baseHAMmax = 15000,
	armor = 3,
	resists = {20,20,20,20,20,20,20,20,10},
	meatType = "meat_wild",
	meatAmount = 5,
	hideType = "hide_leathery",
	hideAmount = 2,
	boneType = "bone_mammal",
	boneAmount = 2,
	milk = 0,
	tamingChance = 0,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/baz_nitch_hue.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	controlDeviceTemplate = "object/intangible/pet/nuna_hue.iff",
        scale = 1.6, 
	lootGroups = {
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 5000000
		}
},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareableeding",""},
		{"blindattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(baz_nitch_terror, "baz_nitch_terror")
