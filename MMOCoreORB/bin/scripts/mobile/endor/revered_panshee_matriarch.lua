revered_panshee_matriarch = Creature:new {
	objectName = "@mob/creature_names:revered_panshee_matriarch",
	socialGroup = "panshee_tribe",
	faction = "panshee_tribe",
	level = 39,
	chanceHit = 0.43,
	damageMin = 335,
	damageMax = 380,
	baseXp = 3824,
	baseHAM = 9100,
	baseHAMmax = 11100,
	armor = 1,
	resists = {45,45,25,-1,25,-1,-1,25,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	templates = {
		"object/mobile/dressed_ewok_f_05.iff"},

--NPC Ewok Loot Template
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
		},
		{
			groups = {
				{group = "ewok", chance = 10000000}
			},
			lootChance = 1460000
		}
	},
	weapons = {"ewok_weapons"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(revered_panshee_matriarch, "revered_panshee_matriarch")
