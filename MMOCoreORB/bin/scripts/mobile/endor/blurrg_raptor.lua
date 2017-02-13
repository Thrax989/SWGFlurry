blurrg_raptor = Creature:new {
	objectName = "@mob/creature_names:blurrg_raptor",
	socialGroup = "blurrg",
	faction = "",
	level = 85,
	chanceHit = 8.5,
	damageMin = 945,
	damageMax = 1600,
	baseXp = 13367,
	baseHAM = 95000,
	baseHAMmax = 105000,
	armor = 0,
	resists = {185,185,180,165,180,180,165,180,155},
	meatType = "meat_carnivore",
	meatAmount = 50,
	hideType = "hide_leathery",
	hideAmount = 40,
	boneType = "bone_avian",
	boneAmount = 35,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/blurrg_hue.iff"},
	scale = 1.35,
	lootGroups = {},
	weapons = {"creature_spit_small_yellow"},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison",""},
		{"creatureareaknockdown",""}
	}
}

CreatureTemplates:addCreatureTemplate(blurrg_raptor, "blurrg_raptor")
