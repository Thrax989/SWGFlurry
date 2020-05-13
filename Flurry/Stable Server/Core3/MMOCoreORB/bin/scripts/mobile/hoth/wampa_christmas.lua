wampa_christmas = Creature:new {
	objectName = "@mob/creature_names:wampa",
	socialGroup = "wampa",
	faction = "",
	level = 300,
	chanceHit = 25.00,
	damageMin = 670,
	damageMax = 1250,
	baseXp = 700668,
	baseHAM = 250000,
	baseHAMmax = 300000,
	armor = 3,
	resists = {50,50,50,50,50,50,50,50,50},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/wampa.iff"},
	scale = 2.5,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack",""},
		{"creatureareaattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(wampa_christmas, "wampa_christmas")
