ep3_etyyy_bantha_kashyyyk = Creature:new {
	objectName = "@monster_name:kashyyyk_bantha",
	socialGroup = "etyyybantha",
	faction = "",
	level = 38,
	chanceHit = 1,
	damageMin = 380,
	damageMax = 420,
	baseXp = 1900,
	baseHAM = 6000,
	baseHAMmax = 6500,
	armor = 0,
	resists = {125,5,140,5,-1,-1,-1,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 350,
	hideType = "hide_wooly",
	hideAmount = 276,
	boneType = "bone_mammal",
	boneAmount = 301,
	milkType = "",
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/kashyyyk_bantha.iff"},
	scale = 0.9,
	lootGroups = {},
	weapons = {},
	attacks = {
		{"posturedownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(ep3_etyyy_bantha_kashyyyk, "ep3_etyyy_bantha_kashyyyk")
