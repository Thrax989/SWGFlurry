ep3_etyyy_uller_elder = Creature:new {
	customName = "an uller elder",
	socialGroup = "uller",
	faction = "",
	level = 65,
	chanceHit = 1,
	damageMin = 500,
	damageMax = 700,
	baseXp = 6500,
	baseHAM = 13000,
	baseHAMmax = 14500,
	armor = 1,
	resists = {150,150,135,30,-1,150,20,140,-1},
	meatType = "meat_herbivore",
	meatAmount = 350,
	hideType = "hide_leathery",
	hideAmount = 276,
	boneType = "bone_mammal",
	boneAmount = 301,
	milkType = "",
	milk = 0,
	tamingChance = 0,
	ferocity = 5,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/uller.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareaknockdown",""},	
		{"intimidationattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(ep3_etyyy_uller_elder, "ep3_etyyy_uller_elder")
