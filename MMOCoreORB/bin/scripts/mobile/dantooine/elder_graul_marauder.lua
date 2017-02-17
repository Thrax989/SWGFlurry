elder_graul_marauder = Creature:new {
   -- objectName = "@mob/creature_names:",
   customName = "elder graul marauder",
	socialGroup = "graul",
	faction = "",
	level = 85,
	chanceHit = 10.75,
	damageMin = 1095,
	damageMax = 1900,
	baseXp = 16411,
	baseHAM = 120000,
	baseHAMmax = 125000,
	armor = 0,
	resists = {175,155,190,190,190,155,155,155,155},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 1000,
	boneType = "bone_mammal",
	boneAmount = 950,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 15,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/graul_hue.iff"},
	scale = 1.35,
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
		{"creatureareableeding",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(elder_graul_marauder, "elder_graul_marauder")
