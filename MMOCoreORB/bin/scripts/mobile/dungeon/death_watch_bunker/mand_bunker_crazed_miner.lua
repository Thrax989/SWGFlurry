mand_bunker_crazed_miner = Creature:new {
	objectName = "",
	customName = "Haldo",
	socialGroup = "death_watch",
	faction = "",
	level = 100,
	chanceHit = 1,
	damageMin = 645,
	damageMax = 1000,
	baseXp = 9336,
	baseHAM = 24000,
	baseHAMmax = 30000,
	armor = 0,
	resists = {0,0,0,0,0,0,0,0,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_mand_bunker_crazed_miner.iff"},
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
				{group = "death_watch_bunker_commoners", chance = 10000000}
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "junk", chance = 10000000}
			},
			lootChance = 5000000
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(mand_bunker_crazed_miner, "mand_bunker_crazed_miner")
