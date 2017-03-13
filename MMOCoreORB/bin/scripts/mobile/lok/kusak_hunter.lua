kusak_hunter = Creature:new {
	objectName = "@mob/creature_names:kusak_hunter",
	socialGroup = "kusak",
	faction = "",
	level = 85,
	chanceHit = 8.5,
	damageMin = 945,
	damageMax = 1600,
	baseXp = 13367,
	baseHAM = 95000,
	baseHAMmax = 105000,
	armor = 0,
	resists = {185,185,185,175,175,175,175,185,155},
	meatType = "meat_carnivore",
	meatAmount = 20,
	hideType = "hide_bristley",
	hideAmount = 14,
	boneType = "bone_mammal",
	boneAmount = 10,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/kusak_hue.iff"},
	scale = 1.25,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"strongdisease",""},
		{"creatureareacombo",""}
	}
}

CreatureTemplates:addCreatureTemplate(kusak_hunter, "kusak_hunter")
