passenger_tcg_republic_gunship_2 = Creature:new {
	customName = "Passenger Seat",
	socialGroup = "townsperson",
	level = 90,
	chanceHit = 0.85,
	damageMin = 570,
	damageMax = 850,
	baseXp = 8130,
	baseHAM = 13000,
	baseHAMmax = 16000,
	armor = 1,
	resists = {40,40,60,35,55,70,35,40,40},
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
	optionsBitmask = INVULNERABLE,
	diet = HERBIVORE,

	templates = {
		"object/mobile/passenger_tcg_republic_gunship_2.iff",
	},

	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = merge(bountyhuntermaster,pistoleermaster,fencermaster)
}

CreatureTemplates:addCreatureTemplate(passenger_tcg_republic_gunship_2, "passenger_tcg_republic_gunship_2")
