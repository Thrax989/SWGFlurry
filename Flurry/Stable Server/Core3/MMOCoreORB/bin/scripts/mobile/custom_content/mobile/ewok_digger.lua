ewok_digger = Creature:new {
	objectName = "",
    customName = "An Ewok Digger",
	socialGroup = "Dark Jedi",
	pvpFaction = "",
	faction = "",
	level = 280,
	chanceHit = 0.29,
	damageMin = 600,
	damageMax = 700,
	baseXp = 609,
	baseHAM = 190000,
	baseHAMmax = 200000,
	armor = 0,
	resists = {15,15,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_ewok_f_01.iff",
		"object/mobile/dressed_ewok_m_01.iff"},
        scale = 0.5,
	lootGroups = {
		 {
	        groups = {
				{group = "ewok", chance = 10000000}
                                			},
			lootChance = 3000000
		}
	},
	weapons = {"ewok_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(ewok_digger, "ewok_digger")
