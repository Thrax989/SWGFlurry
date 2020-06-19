wampa_boss = Creature:new {
	customName = "\\#00ff00<<< Wampa Boss >>> \\#ff0000[lvl 300]",
	socialGroup = "wampa",
	faction = "",
	level = 300,
	chanceHit = 0.75,
	damageMin = 570,
	damageMax = 850,
	baseXp = 7668,
	baseHAM = 12000,
	baseHAMmax = 15000,
	armor = 3,
	resists = {30,160,30,200,200,200,30,30,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 12,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = AIENABLED + INTERESTING,
	diet = CARNIVORE,

	templates = {"object/mobile/wampa.iff"},
	scale = 1.8,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack",""},
		{"creatureareaattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(wampa_boss, "wampa_boss")
