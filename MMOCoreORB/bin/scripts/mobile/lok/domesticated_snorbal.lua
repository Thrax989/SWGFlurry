domesticated_snorbal = Creature:new {
	objectName = "@mob/creature_names:domesticated_snorbal",
	socialGroup = "self",
	faction = "",
	level = 31,
	chanceHit = 0.39,
	damageMin = 260,
	damageMax = 270,
	baseXp = 3005,
	baseHAM = 8600,
	baseHAMmax = 10600,
	armor = 0,
	resists = {140,140,0,-1,-1,-1,-1,0,-1},
	meatType = "meat_herbivore",
	meatAmount = 545,
	hideType = "hide_leathery",
	hideAmount = 500,
	boneType = "bone_mammal",
	boneAmount = 500,
	milkType = "milk_domesticated",
	milk = 500,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/snorbal_hue.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(domesticated_snorbal, "domesticated_snorbal")
