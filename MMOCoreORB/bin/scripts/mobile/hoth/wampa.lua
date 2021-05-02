wampa = Creature:new {
	objectName = "@mob/creature_names:wampa",
	socialGroup = "wampa",
	faction = "",
	level = 300,
	chanceHit = 50.0,
	damageMin = 1250,
	damageMax = 2200,
	baseXp = 8000,
	baseHAM = 75000,
	baseHAMmax = 100000,
	armor = 1,
	resists = {130,160,130,200,200,200,130,130,110},
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
	scale = 0.8,
	lootGroups = {		
		{
			groups = {
				{group = "trash_common", chance = 9000000},
 				{group = "trash_rare", chance = 1000000},
			},
			lootChance = 10000000
		}, 
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 1000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack",""},
		{"creatureareacombo",""},
		{"creatureareadisease",""}    
		{"creatureareaattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(wampa, "wampa")
