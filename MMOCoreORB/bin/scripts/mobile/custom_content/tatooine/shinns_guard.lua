shinns_guard = Creature:new {
	customName = "Shinn's guard",
	socialGroup = "thug",
	faction = "thug",
	level = 12,
	chanceHit = 0.64,
	damageMin = 80,
	damageMax = 135,
	baseXp = 62,
	baseHAM = 113,
	baseHAMmax = 118,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
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
				"object/mobile/dressed_nym_pirate_elite_hum_m.iff",
				"object/mobile/dressed_nym_pirate_elite_nikto_m.iff",
				"object/mobile/dressed_nym_pirate_elite_rod_m.iff"
				},
	lootGroups = {},
	weapons = {"blood_razer_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermid,marksmanmid)
}

CreatureTemplates:addCreatureTemplate(shinns_guard, "shinns_guard")
