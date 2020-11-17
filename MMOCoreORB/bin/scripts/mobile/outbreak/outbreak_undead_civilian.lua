
afflicted_civilian = Creature:new {
	customName = "Afflicted Civilian",
	--objectName = "",
	--randomNameType = NAME_GENERIC_TAG,
	socialGroup = "outbreak_townsperson",
	faction = "",
	level = 60,
	chanceHit = 0.5,
	damageMin = 200,
	damageMax = 600,
	baseXp = 500,
	baseHAM = 700,
	baseHAMmax = 1000,
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

	templates = {"object/mobile/outbreak_undead_civilian_01.iff",
			"object/mobile/outbreak_undead_civilian_02.iff",
			"object/mobile/outbreak_undead_civilian_03.iff",
			"object/mobile/outbreak_undead_civilian_04.iff",
			"object/mobile/outbreak_undead_civilian_05.iff",
			"object/mobile/outbreak_undead_civilian_06.iff",
			"object/mobile/outbreak_undead_civilian_07.iff",
			"object/mobile/outbreak_undead_civilian_08.iff",
			"object/mobile/outbreak_undead_civilian_09.iff",
			"object/mobile/outbreak_undead_civilian_10.iff",
			"object/mobile/outbreak_undead_civilian_11.iff",
			"object/mobile/outbreak_undead_civilian_12.iff",
			"object/mobile/outbreak_undead_civilian_13.iff",
			"object/mobile/outbreak_undead_civilian_14.iff",
			"object/mobile/outbreak_undead_civilian_15.iff",
			"object/mobile/outbreak_undead_civilian_16.iff",
			"object/mobile/outbreak_undead_civilian_17.iff",
			"object/mobile/outbreak_undead_civilian_18.iff",
			"object/mobile/outbreak_undead_civilian_19.iff",
			"object/mobile/outbreak_undead_civilian_20.iff",
			"object/mobile/outbreak_undead_civilian_21.iff",
			"object/mobile/outbreak_undead_civilian_22.iff",
			"object/mobile/outbreak_undead_civilian_24.iff",
			"object/mobile/outbreak_undead_civilian_25.iff",
			"object/mobile/outbreak_undead_civilian_26.iff",
			"object/mobile/outbreak_undead_civilian_27.iff",
			"object/mobile/outbreak_undead_civilian_28.iff",
			"object/mobile/outbreak_undead_civilian_29.iff",
			"object/mobile/outbreak_undead_civilian_30.iff",
			"object/mobile/outbreak_undead_civilian_31.iff",
			"object/mobile/outbreak_undead_civilian_32.iff",
			"object/mobile/outbreak_undead_civilian_33.iff",
			"object/mobile/outbreak_undead_civilian_34.iff",
			"object/mobile/outbreak_undead_civilian_35.iff",
			"object/mobile/outbreak_undead_civilian_36.iff",
			"object/mobile/outbreak_undead_civilian_37.iff",
			"object/mobile/outbreak_undead_civilian_38.iff",
			"object/mobile/outbreak_undead_civilian_39.iff",
			"object/mobile/outbreak_undead_civilian_40.iff",
			"object/mobile/outbreak_undead_civilian_42.iff",
			"object/mobile/outbreak_undead_civilian_43.iff",
			"object/mobile/outbreak_undead_civilian_44.iff",
			"object/mobile/outbreak_undead_civilian_45.iff",
			"object/mobile/outbreak_undead_civilian_46.iff",
			"object/mobile/outbreak_undead_civilian_48.iff",
			"object/mobile/outbreak_undead_civilian_49.iff",
			"object/mobile/outbreak_undead_civilian_50.iff",},
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
	weapons = {},
	conversationTemplate = "",
	reactionStf = "",
	attacks = {
		{"stunattack",""},
		{"creatureareadisease",""},
	},
}
CreatureTemplates:addCreatureTemplate(afflicted_civilian, "afflicted_civilian")



