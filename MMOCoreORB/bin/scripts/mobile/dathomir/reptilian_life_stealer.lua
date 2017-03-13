reptilian_life_stealer = Creature:new {
	objectName = "@mob/creature_names:reptilian_life_stealer",
	socialGroup = "reptilian_flier",
	faction = "",
	level = 85,
	chanceHit = 8.5,
	damageMin = 945,
	damageMax = 1600,
	baseXp = 13367,
	baseHAM = 105000,
	baseHAMmax = 115000,
	armor = 0,
	resists = {180,185,180,185,175,165,165,180,155},
	meatType = "meat_avian",
	meatAmount = 135,
	hideType = "hide_leathery",
	hideAmount = 90,
	boneType = "bone_avian",
	boneAmount = 85,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/reptilian_flier_hue.iff"},
	scale = 1.5,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareadisease",""},
		{"strongpoison",""}
	}
}

CreatureTemplates:addCreatureTemplate(reptilian_life_stealer, "reptilian_life_stealer")
