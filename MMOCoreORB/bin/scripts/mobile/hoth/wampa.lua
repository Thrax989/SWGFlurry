wampa = Creature:new {
	objectName = "@mob/creature_names:wampa",
	socialGroup = "wampa",
	faction = "",
	level = 89,
	chanceHit = 0.85,
	damageMin = 600,
	damageMax = 850,
	baseXp = 8500,
	baseHAM = 13000,
	baseHAMmax = 16000,
	armor = 1,
	resists = {40,170,40,200,200,200,40,40,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 15,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/wampa.iff"},
	scale = 0.8,
	lootGroups = {		
		{
			groups = {
				{group = "trash_common", chance = 9000000},
 				{group = "trash_rare", chance = 1000000},
			},
			lootChance = 1500000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack",""},
		{"creatureareacombo",""},    
		{"creatureareaattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(wampa, "wampa")
