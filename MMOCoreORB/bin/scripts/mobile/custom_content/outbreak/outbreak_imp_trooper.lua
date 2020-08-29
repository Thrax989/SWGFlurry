
afflicted_imp_trooper = Creature:new {
	customName = "Afflicted Imperial Trooper",
	--objectName = "",
	--randomNameType = NAME_GENERIC_TAG,
	socialGroup = "outbreak_townsperson",
	faction = "",
	level = 150,
	chanceHit = 1,
	damageMin = 645,
	damageMax = 1000,
	baseXp = 4000,
	baseHAM = 7000,
	baseHAMmax = 10000,
	armor = 0,
	resists = {10,5,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/outbreak_imp_trooper_guard_m_01.iff",
		"object/mobile/outbreak_imp_trooper_guard_m_02.iff",
		"object/mobile/outbreak_imp_trooper_guard_m_03.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000}				
		},
			lootChance = 10000000
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
				{group = "outbreak", chance = 10000000}
		},
			lootChance = 500000
		}
	},
	weapons = {"pirate_weapons_medium"},
	conversationTemplate = "",
	attacks = merge(brawlermid,marksmanmid)
}

CreatureTemplates:addCreatureTemplate(afflicted_imp_trooper, "afflicted_imp_trooper")



