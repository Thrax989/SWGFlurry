frenzied_fynock_guardian = Creature:new {
	objectName = "@mob/creature_names:frenzied_fynock_guardian",
	socialGroup = "fynock",
	faction = "",
	level = 12,
	chanceHit = 0.29,
	damageMin = 150,
	damageMax = 160,
	baseXp = 514,
	baseHAM = 810,
	baseHAMmax = 990,
	armor = 0,
	resists = {0,0,110,0,0,0,0,-1,-1},
	meatType = "meat_avian",
	meatAmount = 8,
	hideType = "",
	hideAmount = 0,
	boneType = "bone_avian",
	boneAmount = 8,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/fynock_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/fynock_hue.iff",
	scale = 1.1,
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "wearables_all", chance = 5000000},
				{group = "loot_kit_parts", chance = 2500000},
				{group = "tailor_components", chance = 2500000}
			},
			lootChance = 10000000
		},
		},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"",""},
		{"posturedownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(frenzied_fynock_guardian, "frenzied_fynock_guardian")
