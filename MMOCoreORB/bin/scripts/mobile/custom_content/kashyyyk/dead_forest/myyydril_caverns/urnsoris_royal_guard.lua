ep3_urnsoris_royal_guards = Creature:new {
	customName = "an urnsoris royal guard",
	socialGroup = "urnsoris",
	faction = "",
	level = 80,
	chanceHit = 1,
	damageMin = 625,
	damageMax = 825,
	baseXp = 7668,
	baseHAM = 18500,
	baseHAMmax = 22500,
	armor = 1,
	resists = {170,165,165,150,160,150,200,155,-1},
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

	templates = {"object/mobile/urnsoris_guard.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"strongpoison",""},	
		{"creatureareaknockdown",""}
	}

}
CreatureTemplates:addCreatureTemplate(ep3_urnsoris_royal_guards, "ep3_urnsoris_royal_guards")
