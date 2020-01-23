urnsoris_queen = Creature:new {
	objectName = "@monster_name:urnsoris_queen",
	socialGroup = "urnsoris",
	faction = "",
	level = 95,
	chanceHit = 1.5,
	damageMin = 625,
	damageMax = 950,
	baseXp = 9057,
	baseHAM = 75000,
	baseHAMmax = 95000,
	armor = 2,
	resists = {170,170,165,155,165,170,200,165,-1},
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

	templates = {"object/mobile/urnsoris_queen.iff"},
	scale = 1.8,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"strongdisease",""},	
		{"creatureareacombo",""}
	}
}
CreatureTemplates:addCreatureTemplate(urnsoris_queen, "urnsoris_queen")
