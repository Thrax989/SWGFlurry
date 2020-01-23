urnsoris_worker = Creature:new {
	objectName = "@monster_name:urnsoris_worker",
	socialGroup = "urnsoris",
	faction = "",
	level = 75,
	chanceHit = 1,
	damageMin = 600,
	damageMax = 750,
	baseXp = 7207,
	baseHAM = 15500,
	baseHAMmax = 18500,
	armor = 1,
	resists = {160,160,160,35,155,140,180,155,-1},
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

	templates = {"object/mobile/urnsoris_worker.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"strongpoison",""},	
		{"knockdownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(urnsoris_worker, "urnsoris_worker")
