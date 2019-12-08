force_ghost = Creature:new {
	customName = "Force Ghost",
	socialGroup = "townsperson",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 75.00,
	damageMin = 1800,
	damageMax = 3310,
	baseXp = 278490,
	baseHAM = 721000,
	baseHAMmax = 1292000,
	armor = 3,
	resists = {90,90,90,90,90,90,90,90,90},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	diet = HERBIVORE,

	templates = {"object/mobile/ep3/palpatine_hologram.iff"},
	lootGroups = {},	
	weapons = {},
	attacks = {}
}

CreatureTemplates:addCreatureTemplate(force_ghost, "force_ghost")
