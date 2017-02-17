leviasquall = Creature:new {
	objectName = "@mob/creature_names:leviasquall",
	socialGroup = "squall",
	faction = "",
	level = 19,
	chanceHit = 0.33,
	damageMin = 180,
	damageMax = 190,
	baseXp = 1426,
	baseHAM = 4500,
	baseHAMmax = 5500,
	armor = 0,
	resists = {115,5,-1,-1,130,130,-1,5,-1},
	meatType = "meat_herbivore",
	meatAmount = 50,
	hideType = "hide_bristley",
	hideAmount = 61,
	boneType = "bone_mammal",
	boneAmount = 50,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/leviasquall.iff"},
	controlDeviceTemplate = "object/intangible/pet/squall_hue.iff",
	scale = 3,
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
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(leviasquall, "leviasquall")
