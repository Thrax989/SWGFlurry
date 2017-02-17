young_hanadak_rock_crusher = Creature:new {
	objectName = "@mob/creature_names:young_hanadak_rock_crusher",
	socialGroup = "hanadak",
	faction = "",
	level = 22,
	chanceHit = 0.33,
	damageMin = 190,
	damageMax = 220,
	baseXp = 2006,
	baseHAM = 5000,
	baseHAMmax = 6100,
	armor = 0,
	resists = {135,130,10,-1,-1,-1,-1,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 35,
	hideType = "hide_bristley",
	hideAmount = 35,
	boneType = "bone_mammal",
	boneAmount = 35,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/young_hanadak_rock_crusher.iff"},
	scale = 0.85,
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
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(young_hanadak_rock_crusher, "young_hanadak_rock_crusher")
