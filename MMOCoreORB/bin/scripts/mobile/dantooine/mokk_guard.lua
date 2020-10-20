mokk_guard = Creature:new {
	customName = "Mokk Guard",
	socialGroup = "mokk_tribe",
	faction = "mokk_tribe",
	level = 300,
	chanceHit = 75.0,
	damageMin = 1800,
	damageMax = 3500,
	baseXp = 2500,
	baseHAM = 80000,
	baseHAMmax = 100000,
	armor = 2,
	resists = {80,80,80,80,80,80,80,40,60},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
 	scale = 1.1, 

	templates = {
		"object/mobile/dantari_male.iff",
		"object/mobile/dantari_female.iff"},
	lootGroups = {
		{
			groups = {
				{group = "trash_common", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "mokk_elites", chance = 10000000},
			},
			lootChance = 8000000
		},
		{
			groups = {
				{group = "trash_rare", chance = 10000000},
			},
			lootChance = 3000000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 4000000
		}
	},
	weapons = {"blood_razer_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,fencermaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(mokk_guard, "mokk_guard")