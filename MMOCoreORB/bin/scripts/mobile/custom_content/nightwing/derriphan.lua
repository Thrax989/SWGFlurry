derriphan= Creature:new {
	customName = "Derriphan (Dune Corsair Leader)",
	socialGroup = "corsair",
	faction = "corsair",
	level = 336,
	chanceHit = 45.0,
	damageMin = 2270,
	damageMax = 4250,
	baseXp = 28549,
	baseHAM = 410000,
	baseHAMmax = 501000,
	armor = 3,
	resists = {95,45,45,45,45,55,25,19,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/dressed_nym_guard_elite_hum_m.iff"},
	lootGroups = {
		{
	        groups = {
				{group = "weapons", chance = 3300000},
				{group = "g_ep3_chiss_poacher_backpack", chance = 3300000},
				{group = "redeed4", chance = 3400000}
			},
			lootChance = 6500000
		},
		{
	        groups = {
				{group = "composite_armor", chance = 2000000},
				{group = "ubese_armor", chance = 2000000},
				{group = "melee_two_handed", chance = 2000000},
				{group = "rifles", chance = 2000000},
				{group = "wearables_all", chance = 2000000},
			},
			lootChance = 3500000
		}
	},
	weapons = {"ranged_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmannovice,brawlernovice)
}

CreatureTemplates:addCreatureTemplate(derriphan, "derriphan")
