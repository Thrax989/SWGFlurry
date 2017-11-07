masterful_jinda_warrior = Creature:new {
	objectName = "@mob/creature_names:masterful_jinda_warrior",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "jinda_tribe",
	faction = "",
	level = 42,
	chanceHit = 0.44,
	damageMin = 365,
	damageMax = 440,
	baseXp = 4188,
	baseHAM = 8900,
	baseHAMmax = 10900,
	armor = 1,
	resists = {40,40,30,30,30,30,30,30,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	templates = {
		"object/mobile/jinda_male.iff",
		"object/mobile/jinda_female.iff",
		"object/mobile/jinda_male_01.iff",
		"object/mobile/jinda_female_01.iff"},
	
--NPC with AA/CA Template Ewok Generic
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
				{group = "ewok", chance = 10000000}
		},
			lootChance = 3000000
		},
	},
	weapons = {"ewok_weapons"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(masterful_jinda_warrior, "masterful_jinda_warrior")
