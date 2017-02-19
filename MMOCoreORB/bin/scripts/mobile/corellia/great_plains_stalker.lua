great_plains_stalker = Creature:new {
	objectName = "@mob/creature_names:great_plains_stalker",
	socialGroup = "panther",
	faction = "",
	level = 85,
	chanceHit = 8.5,
	damageMin = 945,
	damageMax = 1600,
	baseXp = 13367,
	baseHAM = 95000,
	baseHAMmax = 105000,
	armor = 0,
	resists = {190,190,165,165,165,165,165,165,155},
	meatType = "meat_carnivore",
	meatAmount = 65,
	hideType = "hide_bristley",
	hideAmount = 35,
	boneType = "bone_mammal",
	boneAmount = 30,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 15,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/corellian_sand_panther_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/corellian_sand_panther_hue.iff",
	scale = 1.25,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"blindattack",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(great_plains_stalker, "great_plains_stalker")
