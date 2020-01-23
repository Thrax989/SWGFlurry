forest_webweaver_tombsinger = Creature:new {
	customName = "a Forest Webweaver gravespinner",
	socialGroup = "webweaver",
	faction = "",
	level = 57,
	chanceHit = 0.55,
	damageMin = 450,
	damageMax = 610,
	baseXp = 5555,
	baseHAM = 11000,
	baseHAMmax = 14000,
	armor = 1,
	resists = {110,110,110,140,40,-1,-1,10,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 3,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/webweaver.iff"},
	scale = 1.35,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack","stateAccuracyBonus=25"},	
		{"blindattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(forest_webweaver_tombsinger, "forest_webweaver_tombsinger")
