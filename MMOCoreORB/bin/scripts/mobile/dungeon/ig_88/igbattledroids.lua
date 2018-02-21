igbattledroids = Creature:new {
	customName = "Battle Droid",
	socialGroup = "townsperson",
	faction = "",
	level = 300,
	chanceHit = 20.0,
	damageMin = 250,
	damageMax = 500,
	baseXp = 100000,
	baseHAM = 100000,
	baseHAMmax = 110000,
	armor = 3,
	resists = {40,40,40,40,40,40,40,40,40},
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
	scale = 1.15,

	templates = {
		"object/mobile/battle_droid.iff"
	},
	lootGroups = {
	},
	weapons = {"battle_droid_weapons"},
	attacks = merge(pistoleermaster,carbineermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(igbattledroids, "igbattledroids")
