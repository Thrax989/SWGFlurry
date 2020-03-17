wampa_christmas_babys = Creature:new {
	objectName = "@mob/creature_names:wampa",
	socialGroup = "wampa",
	faction = "",
	level = 150,
	chanceHit = 50.00,
	damageMin = 550,
	damageMax = 750,
	baseXp = 700668,
	baseHAM = 75000,
	baseHAMmax = 100000,
	armor = 1,
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
	scale = 0.5,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack",""},
		{"creatureareaattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(wampa_christmas_babys, "wampa_christmas_babys")
