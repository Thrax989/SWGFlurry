ig_88_rocket = Creature:new {
	customName = "IG-88",
	socialGroup = "townsperson",
	faction = "",
	level = 300,
	chanceHit = .90,
	damageMin = 1845,
	damageMax = 2400,
	baseXp = 12884,
	baseHAM = 210000,
	baseHAMmax = 225000,
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
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.3,

	templates = {"object/mobile/ig_88_rocket.iff"},
	lootGroups = {},
	weapons = {"st_bombardier_weapons"},
	conversationTemplate = "",
	attacks = merge(commandomaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(ig_88_rocket, "ig_88_rocket")

