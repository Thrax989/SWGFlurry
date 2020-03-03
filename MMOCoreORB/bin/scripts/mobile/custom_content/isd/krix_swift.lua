krix_swift = Creature:new {
	--objectName = "",
	customName = "Krix SwiftShadow",
	socialGroup = "mercenary",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 200,
	damageMin = 670,
	damageMax = 1050,
	baseXp = 10081,
	baseHAM = 1129000,
	baseHAMmax = 1136000,
	armor = 2,
	resists = {55,55,70,45,75,80,55,75,50},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.0,


	templates = {"object/mobile/dressed_imperial_colonel_m.iff"},
	lootGroups = {
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "weapons_all", chance = 10000000},
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
			lootChance = 2000000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 2000000
		}
	},
	weapons = {"imperial_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,carbineermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(krix_swift, "krix_swift")
