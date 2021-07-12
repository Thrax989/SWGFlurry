elite_geonosian_warrior = Creature:new {
	customName = "Elite Geonosian Warrior",
	socialGroup = "geonosian",
	faction = "",
	level = 300,
	chanceHit = 0.85,
	damageMin = 800,
	damageMax = 1600,
	baseXp = 13500,
	baseHAM = 60000,
	baseHAMmax = 120000,
	armor = 1,
	resists = {125,135,-1,165,25,125,-1,25,-1},
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
		"object/mobile/dressed_geonosian_warrior_01.iff",
		"object/mobile/dressed_geonosian_warrior_02.iff",
		"object/mobile/dressed_geonosian_warrior_03.iff"},
	lootGroups = {
		{
			groups = {
				{group = "weapon_component_advanced", chance = 10000000},
			},
			lootChance = 3000000
		},		
		{
			groups = {
				{group = "trash_common", chance = 7000000},
 				{group = "trash_rare", chance = 3000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "geonosian_common", chance = 2000000},   
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 4000000
		}
	},
	weapons = {"geonosian_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,marksmanmaster,pistoleermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(elite_geonosian_warrior, "elite_geonosian_warrior")
