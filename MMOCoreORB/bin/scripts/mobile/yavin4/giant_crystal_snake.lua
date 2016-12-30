giant_crystal_snake = Creature:new {
	objectName = "@mob/creature_names:giant_crystal_snake",
	socialGroup = "snake",
	faction = "",
	level = 31,
	chanceHit = 1.19,
	damageMin = 410,
	damageMax = 450,
	baseXp = 4097,
	baseHAM = 8500,
	baseHAMmax = 10500,
	armor = 1,
	resists = {150,150,150,150,150,150,150,150,125},
	meatType = "meat_carnivore",
	meatAmount = 150,
	hideType = "hide_scaley",
	hideAmount = 150,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/giant_crystal_snake.iff"},
	controlDeviceTemplate = "object/intangible/pet/crystal_snake.iff",
	scale = 1.4,
	lootGroups = {},
	weapons = {"creature_spit_small_toxicgreen"},
	conversationTemplate = "",
	attacks = {
		{"strongpoison",""},
		{"posturedownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(giant_crystal_snake, "giant_crystal_snake")
