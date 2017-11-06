panshee_tribesman = Creature:new {
	objectName = "@mob/creature_names:panshee_tribesman",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "panshee_tribe",
	faction = "panshee_tribe",
	level = 24,
	chanceHit = 0.35,
	damageMin = 210,
	damageMax = 220,
	baseXp = 2443,
	baseHAM = 5900,
	baseHAMmax = 7200,
	armor = 1,
	resists = {30,30,-1,10,10,-1,-1,10,-1},
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
		"object/mobile/dressed_ewok_f_01.iff",
		"object/mobile/dressed_ewok_f_07.iff",
		"object/mobile/dressed_ewok_f_08.iff",
		"object/mobile/dressed_ewok_f_09.iff",
		"object/mobile/dressed_ewok_m_01.iff"},
	
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
	attacks = merge(marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(panshee_tribesman, "panshee_tribesman")
