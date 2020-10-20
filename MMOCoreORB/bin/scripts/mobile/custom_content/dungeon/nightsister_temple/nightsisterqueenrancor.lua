nightsisterqueenrancor = Creature:new {
	customName = "Nightsister Queens Pet",
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 300,
	chanceHit = 80,
	damageMin = 1800,
	damageMax = 3500,
	specialDamageMult = 4.0,
	baseXp = 28549,
	baseHAM = 50000,
	baseHAMmax = 75000,
	armor = 2,
	resists = {145,145,145,145,145,145,145,135,140},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/outbreak_afflicted_blackwing_rancor_boss.iff"},
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
		{"creatureareableeding",""},
		{"creatureareacombo",""}
	}
}

CreatureTemplates:addCreatureTemplate(nightsisterqueenrancor, "nightsisterqueenrancor")
