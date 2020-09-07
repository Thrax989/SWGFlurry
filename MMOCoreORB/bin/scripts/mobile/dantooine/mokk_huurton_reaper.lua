mokk_huurton_reaper = Creature:new {
	customName = "Mokk Huurton Reaper",
	socialGroup = "mokk_tribe",
	faction = "mokk_tribe",
	level = 300,
	chanceHit = 75.0,
	damageMin = 2500,
	damageMax = 5000,
	baseXp = 25000,
	baseHAM = 80000,
	baseHAMmax = 100000,
	armor = 1,
	resists = {145,145,145,145,145,145,145,125,135},
	meatType = "meat_wild",
	meatAmount = 25,
	hideType = "hide_wooly",
	hideAmount = 25,
	boneType = "bone_mammal",
	boneAmount = 25,
	milk = 0,
	tamingChance = 0.0,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/huurton_hue.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	scale = 1.6,
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
			lootChance = 7000000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 8000000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 10000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
 		{"knockdownattack",""},
		{"creatureareaattack",""},   
 		{"creatureareableeding",""},   
		{"intimidationattack",""},
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(mokk_huurton_reaper, "mokk_huurton_reaper")