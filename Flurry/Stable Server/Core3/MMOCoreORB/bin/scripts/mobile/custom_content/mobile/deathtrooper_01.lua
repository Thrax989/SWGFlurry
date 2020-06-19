deathtrooper_01 = Creature:new {
	--customName = "@mob/creature_names:deathtrooper_01",
	customName = "Deathtrooper",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 50,
	chanceHit = 0.68,
	damageMin = 160,
	damageMax = 290,
	baseXp = 1514,
	baseHAM = 4000,
	baseHAMmax = 5500,
	armor = 1,
	resists = {25,25,25,25,25,25,25,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
<<<<<<< HEAD
	tamingChance = 0.0,
=======
	tamingChance = 0.00,
>>>>>>> 49dba15ebfe4217b8d3cb3ced3b2bd5d52e08bf9
	ferocity = 1,
	pvpBitmask = ATTACKABLE, -- + ATTACKABLE + ENEMY,
	creatureBitmask = NONE, --KILLER + STALKER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {
				"object/mobile/outbreak_undead_deathtrooper_01_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_02_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_03_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_04_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_05_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_06_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_07_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_08_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_09_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_10_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_11_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_12_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_13_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_14_m.iff"
				},
		
	lootGroups = {},
	--scale = 1.25,
	weapons = {},
	conversationTemplate = "",
	attacks = merge(pistoleermaster,carbineermaster,marksmanmaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(deathtrooper_01, "deathtrooper_01_m")
