error_prone_battle_droid = Creature:new {
	customName = "an error-prone battle droid",
	socialGroup = "thug",
	faction = "thug",
	level = 7,
	chanceHit = 0.46,
	damageMin = 65,
	damageMax = 80,
	baseXp = 250,
	baseHAM = 290,
	baseHAMmax = 390,
	armor = 0,
	resists = {10,10,10,10,10,10,10,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
				"object/mobile/ep3/ep3_rryatt_abandoned_battle_droid_01.iff",
				"object/mobile/ep3/ep3_rryatt_abandoned_battle_droid_02.iff",
				"object/mobile/ep3/ep3_rryatt_abandoned_battle_droid_03.iff"
				},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 4000000},
				{group = "wearables_common", chance = 2000000},
				{group = "pistols", chance = 1000000},
				{group = "tailor_components", chance = 1500000},
				{group = "loot_kit_parts", chance = 1500000}
			}
		}
	},
	weapons = {"battle_droid_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmannovice,brawlernovice)
}

CreatureTemplates:addCreatureTemplate(error_prone_battle_droid, "error_prone_battle_droid")
