valarian_bookie = Creature:new {
	customName = "Valarian's Bookie",
	socialGroup = "valarian",
	faction = "valarian",
	level = 24,
	chanceHit = 0.35,
	damageMin = 230,
	damageMax = 240,
	baseXp = 2543,
	baseHAM = 6800,
	baseHAMmax = 8300,
	armor = 0,
	resists = {15,15,10,10,10,-1,-1,-1,-1},
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
			"object/mobile/dressed_nym_surveyer_hum_f.iff",
			"object/mobile/dressed_nym_surveyer_hum_m.iff",
			"object/mobile/dressed_nym_surveyer_rod_f.iff",
			"object/mobile/dressed_nym_surveyer_rod_m.iff"
	},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 4000000},
				{group = "corsec_weapons", chance = 2500000},
				{group = "wearables_common", chance = 2000000},
				{group = "tailor_components", chance = 1500000}
			}
		}
	},
	weapons = {"corsec_police_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(valarian_bookie, "valarian_bookie")
