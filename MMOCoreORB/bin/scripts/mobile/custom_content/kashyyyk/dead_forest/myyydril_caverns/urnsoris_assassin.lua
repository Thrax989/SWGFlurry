urnsoris_assassin = Creature:new {
	customName = "an urnsoris assassin",
	socialGroup = "urnsoris",
	faction = "",
	level = 38,
	chanceHit = 0.41,
	damageMin = 330,
	damageMax = 370,
	baseXp = 3824,
	baseHAM = 8800,
	baseHAMmax = 10800,
	armor = 0,
	resists = {140,145,-1,180,-1,180,180,-1,-1},
	meatType = "meat_insect",
	meatAmount = 15,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/urnsoris_assassin.iff"},
	lootGroups = {},
	weapons = {"creature_spit_small_toxicgreen"},
	conversationTemplate = "",
	attacks = {	
		{"creatureareableeding",""}
	}
}

CreatureTemplates:addCreatureTemplate(urnsoris_assassin, "urnsoris_assassin")
