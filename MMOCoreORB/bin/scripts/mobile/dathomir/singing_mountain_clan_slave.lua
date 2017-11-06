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
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_sing_mt_clan_slave.iff"},
--NPC with Lootkit Template Nightsister Reduced
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000},
		},
			lootChance = 500000 

		},
		
		{
			groups = {
				{group = "artifact", chance = 10000000}			
		},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "tierone", chance = 10000000}
		},
			lootChance = 750000
		},
		{
			groups = {
				{group = "tiertwo", chance = 10000000}
		},
			lootChance = 100000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}
		},
			lootChance = 50000
		},
		{
			groups = {
				{group = "loot_kit_parts", chance = 10000000}
		},
			lootChance = 150000
		},
		
	},
	weapons = {},
	conversationTemplate = "",
	attacks = brawlernovice
}

CreatureTemplates:addCreatureTemplate(singing_mountain_clan_slave, "singing_mountain_clan_slave")
