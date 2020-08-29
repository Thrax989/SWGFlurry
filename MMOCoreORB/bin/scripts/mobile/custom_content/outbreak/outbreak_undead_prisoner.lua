
outbreak_undead_prisoner = Creature:new {
	customName = "Decomposing Prisoner",
	--objectName = "",
	--randomNameType = NAME_GENERIC_TAG,
	socialGroup = "outbreak_townsperson",
	faction = "",
	level = 100,
	chanceHit = 0.5,
	damageMin = 200,
	damageMax = 600,
	baseXp = 1400,
	baseHAM = 7000,
	baseHAMmax = 8000,
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
	scale = 1.1,

	templates = {"object/mobile/outbreak_undead_prisoner_m_hum_02.iff",
			"object/mobile/outbreak_undead_prisoner_m_hum_03.iff",
			"object/mobile/outbreak_undead_prisoner_m_hum_04.iff",
			"object/mobile/outbreak_undead_prisoner_m_hum_05.iff",
			"object/mobile/outbreak_undead_prisoner_m_monc_02.iff",
			"object/mobile/outbreak_undead_prisoner_m_rod_02.iff",
			"object/mobile/outbreak_undead_prisoner_m_twi_01.iff",
			"object/mobile/outbreak_undead_prisoner_m_wke_02.iff",},
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
		},
},
	weapons = {},
	conversationTemplate = "",
	reactionStf = "",
	attacks = {
		{"stunattack",""},
		{"creatureareadisease",""},
		
		
		
	},
}
CreatureTemplates:addCreatureTemplate(outbreak_undead_prisoner, "outbreak_undead_prisoner")



