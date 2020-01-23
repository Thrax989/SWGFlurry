forest_webweaver_gravespinner = Creature:new {
	customName = "a Forest Webweaver gravespinner",
	socialGroup = "webweaver",
	faction = "",
	level = 55,
	chanceHit = 0.6,
	damageMin = 445,
	damageMax = 600,
	baseXp = 5373,
	baseHAM = 11000,
	baseHAMmax = 14000,
	armor = 0,
	resists = {-1,45,-1,0,0,70,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/webweaver.iff"},
	scale = 1.25,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack","stateAccuracyBonus=25"},	
		{"blindattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(forest_webweaver_gravespinner, "forest_webweaver_gravespinner")
