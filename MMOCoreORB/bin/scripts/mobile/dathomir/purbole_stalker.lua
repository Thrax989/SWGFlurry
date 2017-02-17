purbole_stalker = Creature:new {
	objectName = "@mob/creature_names:purbole_stalker",
	socialGroup = "purbole",
	faction = "",
	level = 19,
	chanceHit = 0.32,
	damageMin = 190,
	damageMax = 200,
	baseXp = 1609,
	baseHAM = 4100,
	baseHAMmax = 5000,
	armor = 0,
	resists = {5,120,5,-1,-1,135,-1,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 15,
	hideType = "hide_bristley",
	hideAmount = 11,
	boneType = "bone_mammal",
	boneAmount = 11,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 5,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/purbole_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/purbole_hue.iff",
	scale = 1.05,
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
		{"dizzyattack",""},
		{"mildpoison",""}
	}
}

CreatureTemplates:addCreatureTemplate(purbole_stalker, "purbole_stalker")
