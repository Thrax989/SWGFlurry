mand_bunker_vent_droid = Creature:new {
	objectName = "@mob/creature_names:r2",
	socialGroup = "",
	faction = "",
	level = 86,
	chanceHit = 0.85,
	damageMin = 570,
	damageMax = 850,
	baseXp = 8130,
	baseHAM = 13000,
	baseHAMmax = 16000,
	armor = 1,
	resists = {40,40,60,35,55,70,35,40,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE ,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = { "object/mobile/r2.iff" },
	lootGroups = {
		{
			groups = {
				{group = "wearables_uncommon", chance = 10000000}
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "wearables_common", chance = 10000000}
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "jetpack_base", chance = 10000000}
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "bounty_hunter_armor", chance = 10000000}
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "carbines", chance = 10000000}
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "pistols", chance = 10000000}
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "junk", chance = 10000000}
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "rifles", chance = 10000000}
			},
			lootChance = 5000000
		}
	},
	weapons = {},
	attacks = {}
}

CreatureTemplates:addCreatureTemplate(mand_bunker_vent_droid, "mand_bunker_vent_droid")
