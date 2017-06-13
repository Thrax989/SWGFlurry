kamurith_defiler = Creature:new {
	objectName = "@mob/creature_names:kamurith_defiler",
	socialGroup = "kamurith",
	faction = "",
	level = 50,
	chanceHit = 0.5,
	damageMin = 420,
	damageMax = 550,
	baseXp = 4916,
	baseHAM = 9600,
	baseHAMmax = 11800,
	armor = 0,
	resists = {5,5,5,5,5,5,5,5,-1},
	meatType = "meat_carnivore",
	meatAmount = 500,
	hideType = "hide_leathery",
	hideAmount = 500,
	boneType = "bone_avian",
	boneAmount = 500,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 2,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/voritor_lizard_hue.iff"},
	scale = 1.25,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack",""},
		{"strongdisease",""}
	}
}

CreatureTemplates:addCreatureTemplate(kamurith_defiler, "kamurith_defiler")
