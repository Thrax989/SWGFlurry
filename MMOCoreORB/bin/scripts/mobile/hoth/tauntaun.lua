tauntaun = Creature:new {
	objectName = "@mob/creature_names:tauntaun",
	socialGroup = "tauntaun",
	faction = "",
	level = 15,
	chanceHit = 0.29,
	damageMin = 120,
	damageMax = 130,
	baseXp = 356,
	baseHAM = 1000,
	baseHAMmax = 1200,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milkType = "",
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/tauntaun_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/tauntaun_hue.iff",
	scale = 1.1,
	lootGroups = {},
	weapons = {"creature_spit_small_yellow"},
	attacks = {
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(tauntaun, "tauntaun")
