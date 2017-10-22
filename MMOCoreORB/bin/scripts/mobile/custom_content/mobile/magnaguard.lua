magnaguard = Creature:new {
	customName = "Magnaguard",
	--objectName = "",
	--randomNameType = NAME_GENERIC_TAG,
	socialGroup = "townsperson",
	faction = "",
	level = 75,
	chanceHit = .750,
	damageMin = 800,
	damageMax = 1000,
	baseXp = 5884,
	baseHAM = 21000,
	baseHAMmax = 25000,
	armor = 1,
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
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,


	templates = {"object/mobile/magnaguard.iff"},
	lootGroups = {},
	weapons = {"battle_droid_weapons"},
	conversationTemplate = "",
	attacks = merge(pistoleermaster,carbineermaster,marksmanmaster)

}

CreatureTemplates:addCreatureTemplate(magnaguard, "magnaguard")

