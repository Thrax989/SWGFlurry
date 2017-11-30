aakuan_guardian = Creature:new {
	objectName = "@mob/creature_names:aakuan_guardian",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "aakuans",
	faction = "aakuans",
	level = 25,
	chanceHit = 0.35,
	damageMin = 220,
	damageMax = 230,
	baseXp = 2637,
	baseHAM = 5400,
	baseHAMmax = 6600,
	armor = 0,
	resists = {30,30,10,10,10,10,10,10,-1},
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
		"object/mobile/dressed_aakuan_guardian_trandoshan_female_01.iff",
		"object/mobile/dressed_aakuan_guardian_trandoshan_male_01.iff"},

--NPC Faction Template	Aajuan
lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000}				
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
				{group = "aakuan_common", chance = 10000000}
		},
			lootChance = 1000000
		},
	},
	weapons = {"melee_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/fancy",
	attacks = merge(brawlermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(aakuan_guardian, "aakuan_guardian")
