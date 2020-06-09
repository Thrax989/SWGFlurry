heat_ghost = Creature:new {
	customName = "Tony 'Heat' Garcia (Lord of Bloodfin)",
	socialGroup = "townsperson",
	pvpFaction = "",
	faction = "",
	level = 350,
	chanceHit = 100.00,
	damageMin = 100000,
	damageMax = 100000,
	baseXp = 278490,
	baseHAM = 50000000,
	baseHAMmax = 50000000,
	armor = 3,
	resists = {190,190,190,190,190,190,190,190,190},
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

CreatureTemplates:addCreatureTemplate(heat_ghost, "heat_ghost")
