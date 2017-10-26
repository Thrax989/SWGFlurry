rebel_lieutenant_colonel = Creature:new {
	objectName = "@mob/creature_names:rebel_lieutenant_colonel",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
	level = 23,
	chanceHit = 0.35,
	damageMin = 220,
	damageMax = 230,
	baseXp = 2443,
	baseHAM = 6300,
	baseHAMmax = 7700,
	armor = 0,
	resists = {15,15,0,0,0,-1,0,-1,-1},
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
	optionsBitmask = AIENABLED + CONVERSABLE,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_rebel_lieutenant_colonel_human_male_01.iff",
		"object/mobile/dressed_rebel_lieutenant_colonel_human_male_02.iff",
		"object/mobile/dressed_rebel_lieutenant_colonel_moncal_female_01.iff",
		"object/mobile/dressed_rebel_lieutenant_colonel_rodian_female_01.iff",
		"object/mobile/dressed_rebel_lieutenant_colonel_rodian_male_01.iff",
		"object/mobile/dressed_rebel_lieutenant_colonel_zabrak_male_01.iff"},

--Rebel Enlisted Loot Template	
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000},
		},
			lootChance = 500000 

		},
		{
			groups = {
				{group = "g_imperial_credit", chance = 10000000}
		},
			lootChance = 200000 
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
				{group = "imppoints", chance = 10000000}
		},
			lootChance = 100000 
		},
	},
	weapons = {"rebel_weapons_heavy"},
	conversationTemplate = "rebelRecruiterConvoTemplate",
	reactionStf = "@npc_reaction/military",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(rebel_lieutenant_colonel, "rebel_lieutenant_colonel")
