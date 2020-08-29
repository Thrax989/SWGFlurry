wonderous_cu_pa = Creature:new {
	objectName = "@mob/creature_names:cu_pa_wonderous",
	socialGroup = "cu_pa",
	faction = "",
	level = 60,
	chanceHit = 0.55,
	damageMin = 470,
	damageMax = 650,
	baseXp = 5830,
	baseHAM = 11000,
	baseHAMmax = 14000,
  armor = 3,
	resists = {160,160,0,150,130,110,110,120,140},
	meatType = "meat_reptilian",
	meatAmount = 430,
	hideType = "hide_bristley",
	hideAmount = 200,
	boneType = "bone_mammal",
	boneAmount = 230,
	milkType = "milk_wild",
	milk = 210,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/cu_pa_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/cu_pa_hue.iff",
	scale = 1.1,
	lootGroups = {},
	weapons = {"creature_spit_small_yellow"},
	conversationTemplate = "",
	attacks = {
		{"stunattack","stateAccuracyBonus=100"},
		{"blindattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(wonderous_cu_pa, "wonderous_cu_pa")
