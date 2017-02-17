stoneskin_hanadak = Creature:new {
	objectName = "@mob/creature_names:stoneskin_hanadak",
	socialGroup = "hanadak",
	faction = "",
	level = 85,
	chanceHit = 8.5,
	damageMin = 720,
	damageMax = 1150,
	baseXp = 13178,
	baseHAM = 88000,
	baseHAMmax = 107000,
	armor = 0,
	resists = {190,190,165,200,200,200,175,180,155},
	meatType = "meat_carnivore",
	meatAmount = 40,
	hideType = "hide_bristley",
	hideAmount = 40,
	boneType = "bone_mammal",
	boneAmount = 40,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 9,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/hanadak_hue.iff"},
	scale = 1.25,
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
		{"knockdownattack",""},
		{"blindattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(stoneskin_hanadak, "stoneskin_hanadak")
