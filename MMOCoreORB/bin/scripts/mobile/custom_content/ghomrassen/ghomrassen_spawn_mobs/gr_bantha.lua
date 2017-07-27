gr_bantha = Creature:new {
	objectName = "@mob/creature_names:bantha",
	socialGroup = "bantha",
	faction = "",
	level = 80,
	chanceHit = 0.41,
	damageMin = 350,
	damageMax = 500,
	baseXp = 3370,
	baseHAM = 14000,
	baseHAMmax = 16500,
	armor = 0,
	resists = {0,120,0,120,0,0,0,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 670,
	hideType = "hide_wooly",
	hideAmount = 675,
	boneType = "bone_mammal",
	boneAmount = 670,
	milkType = "milk_wild",
	milk = 670,
	--tamingChance = 0.25,
	ferocity = 2,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/bantha_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/bantha_hue.iff",
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"",""},
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(gr_bantha, "gr_bantha")
