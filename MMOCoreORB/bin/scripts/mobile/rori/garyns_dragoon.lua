garyns_dragoon = Creature:new {
	objectName = "@mob/creature_names:garyn_dragoon",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "garyn",
	faction = "garyn",
	level = 26,
	chanceHit = 0.36,
	damageMin = 250,
	damageMax = 260,
	baseXp = 2730,
	baseHAM = 7700,
	baseHAMmax = 9400,
	armor = 0,
	resists = {25,20,15,-1,15,15,-1,-1,-1},
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
		"object/mobile/dressed_garyn_dragoon_bith_male_01.iff",
		"object/mobile/dressed_garyn_dragoon_bith_female_01.iff"},

--NPC with Lootkit Template
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000},
		},
			lootChance = 500000 

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
	weapons = {"ranged_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(garyns_dragoon, "garyns_dragoon")
