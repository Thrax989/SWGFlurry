wampa = Creature:new {
	objectName = "@mob/creature_names:wampa",
	socialGroup = "wampa",
	faction = "",
	level = 80,
	chanceHit = 0.75,
	damageMin = 570,
	damageMax = 850,
	baseXp = 7668,
	baseHAM = 12000,
	baseHAMmax = 15000,
	armor = 1,
	resists = {30,160,30,200,200,200,30,30,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 12,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/wampa.iff"},
	scale = 1,
	lootGroups = {
		{
			groups = {
				{group = "armor_all", chance = 4000000},
				{group = "weapons_all", chance = 4500000},
				{group = "wearables_all", chance = 1500000}
			},
			lootChance = 2600000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack",""},
		{"creatureareaattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(wampa, "wampa")
