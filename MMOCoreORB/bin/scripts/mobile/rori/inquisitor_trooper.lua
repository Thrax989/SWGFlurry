inquisitor_trooper = Creature:new {
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "Dark Jedi",
	specialDamageMult = 4.0,
	level = 300,
	chanceHit = 65.00,
	damageMin = 1400,
	damageMax = 1850,
	baseXp = 26654,
	baseHAM = 195000,
	baseHAMmax = 225000,
	armor = 1,
	resists = {45,55,55,55,15,45,55,25,55},
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

	templates = {"object/mobile/dressed_stormtrooper_commando_m.iff"},
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
			lootChance = 10000000
		},
		{
			groups = {
				{group = "trash_rare", chance = 10000000},
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
			lootChance = 10000000
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
	weapons = {"mixed_force_weapons",  "imperial_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(tkamaster,swordsmanmaster,fencermaster,pikemanmaster,brawlermaster,forcepowermaster,riflemanmaster,pistoleermaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(inquisitor_trooper, "inquisitor_trooper")
