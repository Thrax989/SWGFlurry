shear_mite = Creature:new {
	objectName = "@mob/creature_names:shear_mite",
	socialGroup = "shear_mite",
	faction = "",
	level = 16,
	chanceHit = 0.31,
	damageMin = 170,
	damageMax = 180,
	baseXp = 960,
	baseHAM = 2400,
	baseHAMmax = 3000,
	armor = 0,
	resists = {-1,115,5,5,5,5,5,-1,-1},
	meatType = "meat_insect",
	meatAmount = 15,
	hideType = "hide_scaley",
	hideAmount = 12,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 3,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/shear_mite.iff"},
	controlDeviceTemplate = "object/intangible/pet/shear_mite_hue.iff",
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
		{"blindattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(shear_mite, "shear_mite")
