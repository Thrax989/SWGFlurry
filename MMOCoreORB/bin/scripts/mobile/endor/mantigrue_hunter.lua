mantigrue_hunter = Creature:new {
	objectName = "@mob/creature_names:mantigrue_hunter",
	socialGroup = "mantigrue",
	faction = "",
	level = 38,
	chanceHit = 0.41,
	damageMin = 320,
	damageMax = 350,
	baseXp = 3733,
	baseHAM = 8800,
	baseHAMmax = 10800,
	armor = 0,
	resists = {140,140,25,-1,180,-1,180,180,-1},
	meatType = "meat_carnivore",
	meatAmount = 500,
	hideType = "hide_wooly",
	hideAmount = 500,
	boneType = "bone_avian",
	boneAmount = 500,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/mantigrue_night_stalker.iff"},
	controlDeviceTemplate = "object/intangible/pet/perlek_hue.iff",
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"blindattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(mantigrue_hunter, "mantigrue_hunter")
