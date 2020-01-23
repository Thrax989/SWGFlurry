uwari_beetle_aggro = Creature:new {
	customName = "an uwari beetle aggro",
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 35,
	chanceHit = 0.41,
	damageMin = 320,
	damageMax = 350,
	baseXp = 3460,
	baseHAM = 8800,
	baseHAMmax = 10800,
	armor = 0,
	resists = {135,25,25,25,25,-1,25,-1,-1},
	meatType = "meat_insect",
	meatAmount = 3,
	hideType = "hide_scaley",
	hideAmount = 6,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/uwari_beetle_aggro.iff"},
	lootGroups = {},
	weapons = {"creature_spit_small_toxicgreen"},
	conversationTemplate = "",
	attacks = {	
		{"creatureareableeding",""}
	}
}

CreatureTemplates:addCreatureTemplate(uwari_beetle_aggro, "uwari_beetle_aggro")
