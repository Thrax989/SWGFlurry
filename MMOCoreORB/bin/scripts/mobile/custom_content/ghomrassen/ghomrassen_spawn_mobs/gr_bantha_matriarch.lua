gr_bantha_matriarch = Creature:new {
	objectName = "@mob/creature_names:matriarch_bantha",
	socialGroup = "bantha",
	faction = "",
	level = 95,
	chanceHit = 0.35,
	damageMin = 450,
	damageMax = 670,
	baseXp = 3467,
	baseHAM = 13000,
	baseHAMmax = 18000,
	armor = 1,
	resists = {135,110,10,150,-1,-1,-1,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 780,
	hideType = "hide_wooly",
	hideAmount = 780,
	boneType = "bone_mammal",
	boneAmount = 780,
	milkType = "milk_wild",
	milk = 780,
	tamingChance = 0,
	ferocity = 4,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/matriarch_bantha.iff"},
	scale = 1.25,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"",""},
		{"posturedownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(gr_bantha_matriarch, "gr_bantha_matriarch")
