elite_desert_swooper = Creature:new {
	customName = "elite desert swooper",
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
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
				"object/mobile/dressed_criminal_swooper_human_female_01.iff",
				"object/mobile/dressed_criminal_swooper_human_male_01.iff",
				"object/mobile/dressed_criminal_swooper_zabrak_female_01.iff",
				"object/mobile/dressed_criminal_swooper_zabrak_male_01.iff"
				},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(elite_desert_swooper, "elite_desert_swooper")
