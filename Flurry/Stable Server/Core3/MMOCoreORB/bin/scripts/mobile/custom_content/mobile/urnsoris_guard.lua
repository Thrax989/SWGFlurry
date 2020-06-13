urnsoris_guard = Creature:new {
	customName = "urnsoris_guard",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 60,
	chanceHit = 0.81,
	damageMin = 385,
	damageMax = 525,
	baseXp = 10097,
	baseHAM = 81700,
	baseHAMmax = 85400,
	armor = 1,
	resists = {60,60,60,10,60,60,60,60,-1},
	meatType = "meat_insect",
	meatAmount = 91,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 1,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/urnsoris_guard.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(urnsoris_guard, "urnsoris_guard")
