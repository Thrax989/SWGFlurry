meager_tortur = Creature:new {
	objectName = "@mob/creature_names:meager_tortur",
	socialGroup = "tortur",
	faction = "",
	level = 14,
	chanceHit = 0.3,
	damageMin = 150,
	damageMax = 160,
	baseXp = 609,
	baseHAM = 2000,
	baseHAMmax = 2400,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 500,
	hideType = "hide_leathery",
	hideAmount = 575,
	boneType = "bone_mammal",
	boneAmount = 650,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/meager_tortur.iff"},
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
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(meager_tortur, "meager_tortur")
