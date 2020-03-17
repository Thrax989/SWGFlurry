
outbreak_deathtrooper = Creature:new {
	customName = "Project Omega Stormtrooper",
	--objectName = "",
	--randomNameType = NAME_GENERIC_TAG,
	socialGroup = "outbreak_townsperson",
	faction = "",
	level = 100,
	chanceHit = 0.36,
	damageMin = 240,
	damageMax = 250,
	baseXp = 45,
	baseHAM = 7200,
	baseHAMmax = 8800,
	armor = 0,
	resists = {0,0,40,-1,-1,-1,100,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.3,
	

	templates = {"object/mobile/outbreak_undead_deathtrooper_01_m.iff",
			"object/mobile/outbreak_undead_deathtrooper_02_m.iff",
			"object/mobile/outbreak_undead_deathtrooper_03_m.iff",
			"object/mobile/outbreak_undead_deathtrooper_04_m.iff",
			"object/mobile/outbreak_undead_deathtrooper_05_m.iff",
			"object/mobile/outbreak_undead_deathtrooper_06_m.iff",
			"object/mobile/outbreak_undead_deathtrooper_07_m.iff",
			"object/mobile/outbreak_undead_deathtrooper_08_m.iff",
			"object/mobile/outbreak_undead_deathtrooper_09_m.iff",
			"object/mobile/outbreak_undead_deathtrooper_10_m.iff",
			},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000}				
		},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "halloween", chance = 10000000}				
		},
			lootChance = 500000
		},
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
			lootChance = 75000
		},
		{
			groups = {
				{group = "tiertwo", chance = 10000000}
		},
			lootChance = 10000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}
		},
			lootChance = 5000
		},
		{
			groups = {
				{group = "outbreak", chance = 10000000}
		},
			lootChance = 50000
		},
},
	weapons = {""},
	conversationTemplate = "",
	reactionStf = "",
	weapons = {"stormtrooper_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlernovice,marksmannovice)
}
CreatureTemplates:addCreatureTemplate(outbreak_deathtrooper, "outbreak_deathtrooper")



