thune_herd_leader = Creature:new {
	objectName = "@mob/creature_names:thune_herd_leader",
	socialGroup = "thune",
	faction = "",
	level = 48,
	chanceHit = 0.48,
	damageMin = 375,
	damageMax = 460,
	baseXp = 4734,
	baseHAM = 9800,
	baseHAMmax = 12000,
	armor = 0,
	resists = {140,160,0,-1,-1,0,0,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 500,
	hideType = "hide_wooly",
	hideAmount = 500,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/thune_herd_leader.iff"},
	scale = 1.15,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack",""},
		{"posturedownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(thune_herd_leader, "thune_herd_leader")
