janta_scout = Creature:new {
	objectName = "@mob/creature_names:janta_scout",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "janta_tribe",
	faction = "janta_tribe",
	level = 51,
	chanceHit = 0.55,
	damageMin = 420,
	damageMax = 550,
	baseXp = 5007,
	baseHAM = 11000,
	baseHAMmax = 13000,
	armor = 1,
	resists = {-1,35,10,10,10,70,10,10,-1},
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
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dantari_male.iff",
		"object/mobile/dantari_female.iff"},

--NPC with AA/CA and Lootkit Template Janta
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
			lootChance = 100000
		},
		{
			groups = {
				{group = "janta_common", chance = 10000000}
		},
			lootChance = 600000
		},
	},
	weapons = {"primitive_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,fencermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(janta_scout, "janta_scout")
