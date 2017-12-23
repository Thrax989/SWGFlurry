wampa_christmas = Creature:new {
	objectName = "@mob/creature_names:wampa",
	socialGroup = "wampa",
	faction = "",
	level = 300,
	chanceHit = 0.75,
	damageMin = 670,
	damageMax = 1250,
	baseXp = 700668,
	baseHAM = 250000,
	baseHAMmax = 300000,
	armor = 3,
	resists = {30,160,30,200,200,200,30,30,15},
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
	lootGroups = {
		{
			groups = {
				{group = "lootcollectiontierdiamonds", chance = 5000000},
				{group = "tierthree", chance = 5000000},
		},
			lootChance = 10000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack",""},
		{"creatureareaattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(wampa_christmas, "wampa_christmas")
