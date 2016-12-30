dragonet = Creature:new {
	objectName = "@mob/creature_names:dragonet",
	socialGroup = "lizard",
	faction = "",
	level = 29,
	chanceHit = 1.37,
	damageMin = 460,
	damageMax = 470,
	baseXp = 6914,
	baseHAM = 10000,
	baseHAMmax = 12000,
	armor = 1,
	resists = {155,155,155,155,155,155,155,155,125},
	meatType = "meat_carnivore",
	meatAmount = 525,
	hideType = "hide_bristley",
	hideAmount = 525,
	boneType = "bone_mammal",
	boneAmount = 275,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/dune_lizard.iff"},
	controlDeviceTemplate = "object/intangible/pet/dune_lizard_hue.iff",
	scale = 1.2,
	lootGroups = {},
	weapons = {"creature_spit_small_yellow"},
	conversationTemplate = "",
	attacks = {
		{"strongpoison",""},
		{"knockdownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(dragonet, "dragonet")
