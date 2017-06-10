rogue_bantha = Creature:new {
	objectName = "@mob/creature_names:rogue_bantha",
	socialGroup = "bantha",
	faction = "",
	level = 15,
	chanceHit = 0.3,
	damageMin = 170,
	damageMax = 180,
	baseXp = 714,
	baseHAM = 1500,
	baseHAMmax = 1900,
	armor = 0,
	resists = {0,0,0,120,0,0,0,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 500,
	hideType = "hide_wooly",
	hideAmount = 500,
	boneType = "bone_mammal",
	boneAmount = 500,
	milkType = "milk_wild",
	milk = 5000,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/bantha.iff"},
	scale = 1.1,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(rogue_bantha, "rogue_bantha")
