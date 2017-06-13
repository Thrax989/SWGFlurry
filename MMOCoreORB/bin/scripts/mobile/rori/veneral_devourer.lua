veneral_devourer = Creature:new {
	objectName = "@mob/creature_names:pugoriss_venerable_devourer",
	socialGroup = "pugoriss",
	faction = "",
	level = 20,
	chanceHit = 0.32,
	damageMin = 160,
	damageMax = 170,
	baseXp = 1609,
	baseHAM = 3500,
	baseHAMmax = 4300,
	armor = 0,
	resists = {120,120,10,125,135,10,10,10,-1},
	meatType = "meat_carnivore",
	meatAmount = 500,
	hideType = "hide_leathery",
	hideAmount = 500,
	boneType = "bone_mammal",
	boneAmount = 500,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/pugoriss.iff"},
	controlDeviceTemplate = "object/intangible/pet/pugoriss_hue.iff",
	scale = 1.25,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack",""},
		{"blindattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(veneral_devourer, "veneral_devourer")
