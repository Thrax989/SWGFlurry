sherkarmini = Creature:new {
	customName = "Sherkar Spawn",
	socialGroup = "sherkar",
	faction = "",
	level = 300,
	chanceHit = 75.0,
	damageMin = 1800,
	damageMax = 3500,
	baseXp = 2500,
	baseHAM = 40000,
	baseHAMmax = 60000,
	armor = 2,
	resists = {150,150,150,150,130,150,150,150,140},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/som/sher_kar.iff"},
	scale = 0.2;
	lootGroups = {
		{
			groups = {
				{group = "trash_common", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "trash_common", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "trash_rare", chance = 10000000},
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 3000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack","stateAccuracyBonus=100"},
    {"creatureareableeding","BleedChance=100"},    
		{"creatureareacombo","stateAccuracyBonus=100"}
	}
}
CreatureTemplates:addCreatureTemplate(sherkarmini, "sherkarmini")
