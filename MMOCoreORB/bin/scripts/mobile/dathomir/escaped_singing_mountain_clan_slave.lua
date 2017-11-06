escaped_singing_mountain_clan_slave = Creature:new {
	objectName = "@mob/creature_names:escaped_singing_mtn_clan_slave",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "slave",
	faction = "",
	level = 26,
	chanceHit = 0.36,
	damageMin = 260,
	damageMax = 270,
	baseXp = 2543,
	baseHAM = 7200,
	baseHAMmax = 8800,
	armor = 0,
	resists = {25,20,0,-1,0,-1,-1,0,-1},
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
	templates = {"object/mobile/dressed_dathomir_sing_mt_clan_escaped_slave.iff"},

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
		{
			groups = {
				{group = "nightsister_common", chance = 10000000}
		},
			lootChance = 150000
		},
	},
	weapons = {"primitive_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,fencermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(escaped_singing_mountain_clan_slave, "escaped_singing_mountain_clan_slave")
