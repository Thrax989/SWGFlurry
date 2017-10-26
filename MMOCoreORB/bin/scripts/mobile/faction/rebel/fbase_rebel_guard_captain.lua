fbase_rebel_guard_captain = Creature:new {
	objectName = "@mob/creature_names:fbase_rebel_guard_captain",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
	level = 45,
	chanceHit = 0.48,
	damageMin = 370,
	damageMax = 450,
	baseXp = 4500,
	baseHAM = 9800,
	baseHAMmax = 12000,
	armor = 0,
	resists = {30,30,30,130,30,130,-1,-1,-1},
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
		"object/mobile/dressed_rebel_specforce_captain_human_male_01.iff",
		"object/mobile/dressed_rebel_specforce_captain_human_female_01.iff",
		"object/mobile/dressed_rebel_specforce_captain_moncal_female_01.iff",
		"object/mobile/dressed_rebel_specforce_captain_rodian_female_01.iff",
		"object/mobile/dressed_rebel_specforce_captain_zabrak_male_01.iff",
		"object/mobile/dressed_rebel_specforce_captain_trandoshan_male_01.iff"},

--Rebel Officer Loot Template	
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 7500000},
				{group = "rebel_officer_common", chance = 2500000},
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
	conversationTemplate = "rebelRecruiterConvoTemplate",
	reactionStf = "@npc_reaction/military",
	attacks = merge(brawlermaster,marksmanmaster,pistoleermaster,teraskasinovice)
}

CreatureTemplates:addCreatureTemplate(fbase_rebel_guard_captain, "fbase_rebel_guard_captain")
