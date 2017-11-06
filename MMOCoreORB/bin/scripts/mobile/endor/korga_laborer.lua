korga_laborer = Creature:new {
	objectName = "@mob/creature_names:korga_laborer",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "korga_tribe",
	faction = "korga_tribe",
	level = 13,
	chanceHit = 0.29,
	damageMin = 130,
	damageMax = 140,
	baseXp = 714,
	baseHAM = 1200,
	baseHAMmax = 1400,
	armor = 0,
	resists = {20,20,0,10,15,0,0,-1,-1},
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
	creatureBitmask = PACK + KILLER,
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
	attacks = brawlermid
}

CreatureTemplates:addCreatureTemplate(korga_laborer, "korga_laborer")
