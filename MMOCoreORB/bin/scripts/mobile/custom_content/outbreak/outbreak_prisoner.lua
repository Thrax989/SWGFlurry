
outbreak_prisoner = Creature:new {
	customName = "Afflicted Prisoner",
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
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.2,

	templates = {"object/mobile/outbreak_prisoner_m_04.iff",
			"object/mobile/outbreak_prisoner_m_bith_01.iff",
			"object/mobile/outbreak_prisoner_m_bith_02.iff",
			"object/mobile/outbreak_prisoner_m_hum_01.iff",
			"object/mobile/outbreak_prisoner_m_hum_02.iff",
			"object/mobile/outbreak_prisoner_m_hum_03.iff",
			"object/mobile/outbreak_prisoner_m_hum_04.iff",
			"object/mobile/outbreak_prisoner_m_hum_05.iff",
			"object/mobile/outbreak_prisoner_m_ith_01.iff",
			"object/mobile/outbreak_prisoner_m_ith_02.iff",
			"object/mobile/outbreak_prisoner_m_wke_01.iff",
			"object/mobile/outbreak_prisoner_m_wke_02.iff",
			"object/mobile/outbreak_prisoner_m_monc_01.iff",
			"object/mobile/outbreak_prisoner_m_monc_02.iff",
			"object/mobile/outbreak_prisoner_m_twi_01.iff",
			"object/mobile/outbreak_prisoner_m_twi_02.iff",
			"object/mobile/outbreak_prisoner_m_zab_01.iff",
			"object/mobile/outbreak_prisoner_m_zab_02.iff",},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000}				
		},
			lootChance = 10000000
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
		
		
	},
}
CreatureTemplates:addCreatureTemplate(outbreak_prisoner, "outbreak_prisoner")



