urnsoris_young = Creature:new {
	objectName = "@monster_name:urnsoris_young",
	socialGroup = "urnsoris",
	faction = "",
	level = 65,
	chanceHit = 1,
	damageMin = 450,
	damageMax = 650,
	baseXp = 6288,
	baseHAM = 12000,
	baseHAMmax = 16000,
	armor = 1,
	resists = {150,150,35,20,140,140,160,145,-1},
	meatType = "meat_insect",
	meatAmount = 25,
	hideType = "hide_scaley",
	hideAmount = 14,
	boneType = "",
	boneAmount = 0,
	milkType = "",
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/urnsoris_young.iff"},
	scale = 0.5,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"strongpoison",""},	
		{"posturedownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(urnsoris_young, "urnsoris_young")
