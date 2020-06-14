varactyl = Creature:new {
	customName = "Varactyl",
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 50,
	chanceHit = 0.24,
	damageMin = 40,
	damageMax = 45,
	baseXp = 3500,
	baseHAM = 12500,
	baseHAMmax = 18500,
	armor = 0,
	resists = {50,40,5,40,40,15,20,15,-1},
  meatType = "meat_herbivore",
	meatAmount = 45,
	hideType = "hide_leathery",
	hideAmount = 50,
	boneType = "bone_mammal",
	boneAmount = 55,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/varactyl.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
				{"stunattack",""},
        {"intimidationattack",""},
        {"blindattack",""},
	}
}

CreatureTemplates:addCreatureTemplate(varactyl, "varactyl")
