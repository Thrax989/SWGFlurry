urnsoris_handmaiden = Creature:new {
	objectName = "@monster_name:urnsoris_handmaiden",
	socialGroup = "urnsoris",
	faction = "",
	level = 80,
	chanceHit = 1,
	damageMin = 625,
	damageMax = 825,
	baseXp = 7668,
	baseHAM = 19000,
	baseHAMmax = 23000,
	armor = 1,
	resists = {170,165,165,150,165,155,200,160,-1},
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

	templates = {"object/mobile/urnsoris_handmaiden.iff"},
	scale = 1.5,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"strongpoison",""},	
		{"creatureareaknockdown",""}
	}
}
CreatureTemplates:addCreatureTemplate(urnsoris_handmaiden, "urnsoris_handmaiden")
