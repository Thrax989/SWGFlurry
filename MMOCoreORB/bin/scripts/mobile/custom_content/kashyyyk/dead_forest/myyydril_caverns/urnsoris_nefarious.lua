urnsoris_nefarious = Creature:new {
	customName = "Nefarious",
	socialGroup = "urnsoris",
	faction = "",
	level = 75,
	chanceHit = 1,
	damageMin = 600,
	damageMax = 750,
	baseXp = 7500,
	baseHAM = 16000,
	baseHAMmax = 17500,
	armor = 1,
	resists = {160,165,160,35,150,20,180,145,-1},
	meatType = "meat_insect",
	meatAmount = 25,
	hideType = "hide_scaley",
	hideAmount = 14,
	boneType = "",
	boneAmount = 0,
	milkType = "",
	milk = 0,
	tamingChance = 0,
	ferocity = 12,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/urnsoris.iff"},
	scale = 1.8,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"strongpoison",""},	
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(urnsoris_nefarious, "urnsoris_nefarious")
