gr_armodragon = Creature:new {
	objectName = "@mob/creature_names:dragonet_armodragon",
	socialGroup = "lizard",
	faction = "",
	level = 80,
	chanceHit = 0.41,
	damageMin = 350,
	damageMax = 500,
	baseXp = 3370,
	baseHAM = 14000,
	baseHAMmax = 16500,
	armor = 0,
	resists = {125,140,20,20,20,-1,20,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 580,
	hideType = "hide_bristley",
	hideAmount = 680,
	boneType = "bone_mammal",
	boneAmount = 680,
	milk = 0,
	--tamingChance = 0.05,
	ferocity = 6,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/dune_lizard.iff"},
	--controlDeviceTemplate = "object/intangible/pet/dune_lizard_hue.iff",
	scale = 1.4,
	lootGroups = {},
	weapons = {"creature_spit_small_yellow"},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack",""},
		{"posturedownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(gr_armodragon, "gr_armodragon")
