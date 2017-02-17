imperial_veermok = Creature:new {
	objectName = "@mob/creature_names:imperial_veermok",
	socialGroup = "imperial",
	faction = "imperial",
	level = 27,
	chanceHit = 0.36,
	damageMin = 240,
	damageMax = 250,
	baseXp = 2822,
	baseHAM = 7200,
	baseHAMmax = 8800,
	armor = 0,
	resists = {135,125,0,-1,150,130,0,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 150,
	hideType = "hide_bristley",
	hideAmount = 150,
	boneType = "bone_mammal",
	boneAmount = 60,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/veermok_hue.iff"},
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

CreatureTemplates:addCreatureTemplate(imperial_veermok, "imperial_veermok")
