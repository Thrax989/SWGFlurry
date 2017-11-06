kunga_herbalist = Creature:new {
	objectName = "@mob/creature_names:kunga_herbalist",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "kunga_tribe",
	faction = "kunga_tribe",
	level = 16,
	chanceHit = 0.31,
	damageMin = 180,
	damageMax = 190,
	baseXp = 960,
	baseHAM = 2400,
	baseHAMmax = 3000,
	armor = 0,
	resists = {0,15,0,-1,-1,20,20,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	templates = {
		"object/mobile/dantari_male.iff",
		"object/mobile/dantari_female.iff"},

--NPC with AA/CA and Lootkit Template
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000},
		},
			lootChance = 500000 

		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000}
		},
			lootChance = 100000 
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
		},
			lootChance = 100000 
		},
		{
			groups = {
				{group = "artifact", chance = 10000000}			
		},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "tierone", chance = 10000000}
		},
			lootChance = 750000
		},
		{
			groups = {
				{group = "tiertwo", chance = 10000000}
		},
			lootChance = 100000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}
		},
			lootChance = 50000
		},
		{
			groups = {
				{group = "loot_kit_parts", chance = 10000000}
		},
			lootChance = 150000
		},
	},
	weapons = {"primitive_weapons"},
	conversationTemplate = "",
	attacks = brawlermaster
}

CreatureTemplates:addCreatureTemplate(kunga_herbalist, "kunga_herbalist")
