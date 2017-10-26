fbase_rebel_squad_leader = Creature:new {
	objectName = "@mob/creature_names:fbase_rebel_squad_leader",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
	level = 42,
	chanceHit = 0.46,
	damageMin = 355,
	damageMax = 420,
	baseXp = 4200,
	baseHAM = 9500,
	baseHAMmax = 11700,
	armor = 0,
	resists = {110,110,40,40,130,40,130,-1,-1},
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
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_rebel_specforce_pathfinder_human_male_01.iff",
		"object/mobile/dressed_rebel_specforce_pathfinder_moncal_female_01.iff",
		"object/mobile/dressed_rebel_specforce_pathfinder_rodian_female_01.iff",
		"object/mobile/dressed_rebel_specforce_pathfinder_twk_female_01.iff",
		"object/mobile/dressed_rebel_specforce_pathfinder_twk_male_01.iff",
		"object/mobile/dressed_rebel_specforce_pathfinder_zabrak_female_fat_01.iff"
		},

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
	weapons = {"rebel_weapons_medium"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(brawlermaster,marksmanmaster,carbineernovice)
}

CreatureTemplates:addCreatureTemplate(fbase_rebel_squad_leader, "fbase_rebel_squad_leader")
