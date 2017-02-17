jabba_rancor = Creature:new {
	objectName = "@mob/creature_names:jabbas_palace_rancor",
	socialGroup = "jabba ",
	faction = "",
	level = 61,
	chanceHit = 0.590000,
	damageMin = 485,
	damageMax = 680,
	baseXp = 5921,
	baseHAM = 12000,
	baseHAMmax = 12000,
	armor = 0,
	resists = {0,0,0,0,0,0,0,0,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	diet = CARNIVORE,

	templates = {"object/mobile/rancor.iff"},
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
	attacks = {
		{"stunattack",""},
		{"intimidationattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(jabba_rancor, "jabba_rancor")
