bewitching_korga_dark_shaman = Creature:new {
	objectName = "@mob/creature_names:bewitching_korga_dark_shaman",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "korga_tribe",
	faction = "korga_tribe",
	level = 38,
	chanceHit = 0.43,
	damageMin = 345,
	damageMax = 400,
	baseXp = 3824,
	baseHAM = 8900,
	baseHAMmax = 10900,
	armor = 0,
	resists = {0,0,0,0,0,-1,30,0,-1},
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
	templates = {
		"object/mobile/dulok_male.iff",
		"object/mobile/dulok_female.iff"},

--NPC Ewok Loot Template
	lootGroups = {
		{
			groups = {
				{group = "artifact", chance = 10000000}			
		},
			lootChance = 100000
		},
		{
			groups = {
				{group = "tierone", chance = 10000000}
		},
			lootChance = 50000
		},
		{
			groups = {
				{group = "tiertwo", chance = 10000000}
		},
			lootChance = 25000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}
		},
			lootChance = 10000
		},
		{
			groups = {
				{group = "ewok", chance = 10000000}
			},
			lootChance = 1460000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = brawlermaster
}

CreatureTemplates:addCreatureTemplate(bewitching_korga_dark_shaman, "bewitching_korga_dark_shaman")
