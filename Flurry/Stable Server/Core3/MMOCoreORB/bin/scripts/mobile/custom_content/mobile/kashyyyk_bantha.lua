kashyyyk_bantha = Creature:new {
	--customName = "a Kashyyyk Bantha",
  objectName = "@mob/creature_names:kashyyyk_bantha",
	socialGroup = "townsperson",
	-- faction = "townsperson",
  level = 40,
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
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack",""},
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(kashyyyk_bantha, "kashyyyk_bantha")
