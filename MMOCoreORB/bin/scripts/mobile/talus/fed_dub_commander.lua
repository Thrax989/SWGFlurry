fed_dub_commander = Creature:new {
	objectName = "@mob/creature_names:fed_dub_commander",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "fed_dub",
	faction = "fed_dub",
	level = 23,
	chanceHit = 0.34,
	damageMin = 200,
	damageMax = 210,
	baseXp = 2219,
	baseHAM = 5400,
	baseHAMmax = 6600,
	armor = 0,
	resists = {0,30,0,40,-1,40,-1,-1,-1},
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
		"object/mobile/dressed_fed_dub_commander_bith_female_01.iff",
		"object/mobile/dressed_fed_dub_commander_bith_male_01.iff"},

--Creature Default Loot Template
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
		}
	},
	weapons = {},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/townperson",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(fed_dub_commander, "fed_dub_commander")
