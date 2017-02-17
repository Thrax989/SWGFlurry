roba_boar = Creature:new {
	objectName = "@mob/creature_names:young_roba",
	socialGroup = "roba",
	faction = "",
	level = 50,
	chanceHit = 0.5,
	damageMin = 395,
	damageMax = 500,
	baseXp = 4825,
	baseHAM = 10000,
	baseHAMmax = 12000,
	armor = 0,
	resists = {135,135,5,160,-1,160,-1,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 15,
	hideType = "hide_leathery",
	hideAmount = 30,
	boneType = "bone_mammal",
	boneAmount = 15,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/roba_hue.iff"},
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
		{"blindattack",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(roba_boar, "roba_boar")
