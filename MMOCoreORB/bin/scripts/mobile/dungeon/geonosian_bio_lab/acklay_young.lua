acklay_young = Creature:new {
	--objectName = "@mob/creature_names:",
	customName = "Acklay Young",
	socialGroup = "geonosian",
	pvpFaction = "",
	faction = "",
	level = 100,
	chanceHit = 100,
	damageMin = 950,
	damageMax = 1900,
	baseXp = 12884,
	baseHAM = 75000,
	baseHAMmax = 95000,
	armor = 0,
	resists = {35,40,50,50,40,40,35,35,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 5,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	scale = 0.2,

	templates = {"object/mobile/acklay_hue.iff"},
	lootGroups = {
		{
			groups = {
				{group = "acklay", chance = 5000000},
				{group = "treasure_map_group", chance = 2500000},
				{group = "skill_buffs", chance = 2500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}
			},
			lootChance = 10000000
		},
	},
	weapons = {"creature_spit_large_yellow"},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo",""},
		{"posturedownattack","postureDownChance=50"}
	}
}

CreatureTemplates:addCreatureTemplate(acklay_young, "acklay_young")