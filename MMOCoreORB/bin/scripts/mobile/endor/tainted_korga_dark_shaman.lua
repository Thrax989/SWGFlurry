tainted_korga_dark_shaman = Creature:new {
	objectName = "@mob/creature_names:tainted_korga_dark_shaman",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "korga_tribe",
	faction = "korga_tribe",
	level = 24,
	chanceHit = 0.35,
	damageMin = 220,
	damageMax = 230,
	baseXp = 2543,
	baseHAM = 6300,
	baseHAMmax = 7700,
	armor = 0,
	resists = {20,20,0,50,50,-1,0,-1,-1},
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
	templates = {"object/mobile/dulok_male.iff"},
	
--NPC Donkuwah Loot Template
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
				{group = "donkuwah_common", chance = 10000000}
			},
			lootChance = 1460000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = brawlermaster
}

CreatureTemplates:addCreatureTemplate(tainted_korga_dark_shaman, "tainted_korga_dark_shaman")
