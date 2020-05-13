trainer_gcw_imperial = Creature:new {
	customName = "Imperial GCW Trainer",
	faction = "imperial",
	level = 100,
	chanceHit = 0.390000,
	damageMin = 290,
	damageMax = 300,
	baseXp = 2914,
	baseHAM = 8400,
	baseHAMmax = 10200,
	armor = 0,
	resists = {-1,-1,-1,-1,-1,-1,-1,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.000000,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	optionsBitmask = INVULNERABLE + CONVERSABLE,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_imperial_commander_m.iff",
		"object/mobile/dressed_imperial_colonel_m.iff",
		"object/mobile/dressed_imperial_officer_f.iff"
	},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "gcwimperialTrainerConvoTemplate",
	attacks = {}
}
CreatureTemplates:addCreatureTemplate(trainer_gcw_imperial,"trainer_gcw_imperial")
