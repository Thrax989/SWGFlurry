foul_desecrator = Creature:new {
	objectName = "@mob/creature_names:kamurith_foul_desecrator",
	socialGroup = "kamurith",
	faction = "",
	level = 60,
	chanceHit = 1.25,
	damageMin = 500,
	damageMax = 680,
	baseXp = 11230,
	baseHAM = 12500,
	baseHAMmax = 15500,
	armor = 1,
	resists = {165,165,150,145,165,175,200,150,-1},
	meatType = "meat_carnivore",
	meatAmount = 180,
	hideType = "hide_leathery",
	hideAmount = 130,
	boneType = "bone_avian",
	boneAmount = 100,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 10,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/voritor_lizard_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/voritor_lizard_hue.iff",
	scale = 1.35,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"strongdisease","stateAccuracyBonus=100"},
		{"creatureareadisease","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(foul_desecrator, "foul_desecrator")
