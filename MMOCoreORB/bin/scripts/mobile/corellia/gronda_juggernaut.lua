gronda_juggernaut = Creature:new {
	objectName = "@mob/creature_names:gronda_juggernaut",
	socialGroup = "gronda",
	faction = "",
	level = 70,
	chanceHit = 0.65,
	damageMin = 430,
	damageMax = 570,
	baseXp = 6747,
	baseHAM = 12000,
	baseHAMmax = 15000,
	armor = 0,
	resists = {165,165,175,-1,200,20,20,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 500,
	hideType = "hide_leathery",
	hideAmount = 500,
	boneType = "bone_mammal",
	boneAmount = 500,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 14,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/gronda_hue.iff"},
	scale = 1.4,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack",""},
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(gronda_juggernaut, "gronda_juggernaut")
