aggrivated_kaadu_trampler = Creature:new {
	objectName = "@mob/creature_names:kaadu_aggrivated_trampler",
	socialGroup = "kaadu",
	faction = "",
	level = 60,
	chanceHit = 0.55,
	damageMin = 470,
	damageMax = 650,
	baseXp = 5830,
	baseHAM = 11000,
	baseHAMmax = 14000,
  armor = 3,
	resists = {140,135,135,125,125,165,135,125,140},
	meatType = "meat_avian",
	meatAmount = 240,
	hideType = "hide_leathery",
	hideAmount = 170,
	boneType = "bone_avian",
	boneAmount = 140,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/kaadu_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/kaadu_hue.iff",
	scale = 1.25,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack","stateAccuracyBonus=100"},
		{"posturedownattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(aggrivated_kaadu_trampler, "aggrivated_kaadu_trampler")
