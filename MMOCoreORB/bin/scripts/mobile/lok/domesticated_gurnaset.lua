domesticated_gurnaset = Creature:new {
	objectName = "@mob/creature_names:domesticated_gurnaset",
	socialGroup = "self",
	faction = "",
	level = 13,
	chanceHit = 0.3,
	damageMin = 130,
	damageMax = 140,
	baseXp = 514,
	baseHAM = 2000,
	baseHAMmax = 2400,
	armor = 0,
	resists = {110,110,0,0,0,0,0,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 500,
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

	templates = {"object/mobile/gurnaset_hue.iff"},
	lootGroups = {},
	weapons = {"creature_spit_small_yellow"},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(domesticated_gurnaset, "domesticated_gurnaset")
