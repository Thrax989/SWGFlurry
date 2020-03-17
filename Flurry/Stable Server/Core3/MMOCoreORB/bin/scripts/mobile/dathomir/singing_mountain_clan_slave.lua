singing_mountain_clan_slave = Creature:new {
	objectName = "@mob/creature_names:singing_mtn_clan_slave",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "mtn_clan",
	faction = "mtn_clan",
	level = 10,
	chanceHit = 0.28,
	damageMin = 130,
	damageMax = 140,
	baseXp = 292,
	baseHAM = 405,
	baseHAMmax = 495,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_sing_mt_clan_slave.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000},
			},
			lootChance = 4000000
		},
		{
			groups = {
				{group = "wearables_common", chance = 10000000},
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "loot_kit_parts", chance = 10000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "tailor_components", chance = 10000000},
			},
			lootChance = 1500000
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = brawlernovice
}

CreatureTemplates:addCreatureTemplate(singing_mountain_clan_slave, "singing_mountain_clan_slave")
