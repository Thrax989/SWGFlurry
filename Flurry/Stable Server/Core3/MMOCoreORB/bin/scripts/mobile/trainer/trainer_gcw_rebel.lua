trainer_gcw_rebel = Creature:new {
	customName = "Rebel GCW Trainer",
	faction = "Rebel",
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
		"object/mobile/dressed_rebel_brigadier_general_human_female_01.iff",
		"object/mobile/dressed_rebel_brigadier_general_moncal_female.iff",
		"object/mobile/dressed_rebel_colonel_old_human_female.iff"
	},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "gcwrebelTrainerConvoTemplate",
	attacks = {}
}
CreatureTemplates:addCreatureTemplate(trainer_gcw_rebel,"trainer_gcw_rebel")
