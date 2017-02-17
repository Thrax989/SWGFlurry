desert_eopie = Creature:new {
	objectName = "@mob/creature_names:desert_eopie",
	socialGroup = "self",
	faction = "",
	level = 16,
	chanceHit = 0.31,
	damageMin = 170,
	damageMax = 180,
	baseXp = 831,
	baseHAM = 2900,
	baseHAMmax = 3500,
	armor = 0,
	resists = {5,5,5,5,5,5,5,5,-1},
	meatType = "meat_herbivore",
	meatAmount = 300,
	hideType = "hide_leathery",
	hideAmount = 225,
	boneType = "bone_mammal",
	boneAmount = 125,
	milkType = "milk_wild",
	milk = 150,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/eopie.iff"},
	controlDeviceTemplate = "object/intangible/pet/eopie_hue.iff",
	scale = 1.2,
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
		{"posturedownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(desert_eopie, "desert_eopie")
