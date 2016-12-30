bark_mite_burrower_queen = Creature:new {
	objectName = "@mob/creature_names:bark_mite_burrower_queen",
	socialGroup = "mite",
	faction = "",
	level = 60,
	chanceHit = 1.55,
	damageMin = 640,
	damageMax = 790,
	baseXp = 7830,
	baseHAM = 13000,
	baseHAMmax = 15000,
	armor = 1,
	resists = {170,170,170,170,170,170,170,170,135},
	meatType = "meat_insect",
	meatAmount = 550,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/bark_mite_burrower_queen.iff"},
	scale = 1.2,
	lootGroups = {},
	weapons = {"creature_spit_small_yellow"},
	conversationTemplate = "",
	attacks = {
		{"stunattack",""},
		{"strongdisease",""}
	}
}

CreatureTemplates:addCreatureTemplate(bark_mite_burrower_queen, "bark_mite_burrower_queen")
