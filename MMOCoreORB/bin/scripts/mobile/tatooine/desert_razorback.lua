desert_razorback = Creature:new {
	objectName = "@mob/creature_names:desert_razorback",
	socialGroup = "boar",
	faction = "",
	level = 24,
	chanceHit = 0.35,
	damageMin = 230,
	damageMax = 240,
	baseXp = 2443,
	baseHAM = 6800,
	baseHAMmax = 8300,
	armor = 0,
	resists = {20,20,20,20,-1,20,-1,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 65,
	hideType = "hide_leathery",
	hideAmount = 40,
	boneType = "bone_mammal",
	boneAmount = 25,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/zucca_boar_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/pet_control.iff", -- zucca_boar_hue.iff bugged in client
	scale = 1.15,
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
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(desert_razorback, "desert_razorback")
