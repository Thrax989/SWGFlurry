urnsoris_nurse = Creature:new {
	objectName = "@monster_name:urnsoris_nurse",
	socialGroup = "urnsoris",
	faction = "",
	level = 75,
	chanceHit = 1,
	damageMin = 625,
	damageMax = 775,
	baseXp = 7207,
	baseHAM = 16500,
	baseHAMmax = 19000,
	armor = 1,
	resists = {160,165,160,35,150,140,190,150,-1},
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

	templates = {"object/mobile/urnsoris_nurse.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"strongpoison",""},	
		{"intimidationattack",""}
	}
}
CreatureTemplates:addCreatureTemplate(urnsoris_nurse, "urnsoris_nurse")
