mauler_lord = Creature:new {
	objectName = "@mob/creature_names:mauler_lord",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "mauler",
	faction = "",
	level = 27,
	chanceHit = 0.360000,
	damageMin = 250,
	damageMax = 260,
	baseXp = 2822,
	baseHAM = 6800,
	baseHAMmax = 8300,
	armor = 0,
	resists = {20,40,0,0,0,0,-1,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.000000,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + AGGRESSIVE + ENEMY,
	creatureBitmask = PACK + KILLER,
	diet = HERBIVORE,
	templates = {"object/mobile/dressed_mauler_lord.iff"},

--NPC (Faction Loot) Default Template with Lootkit Drops
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000}				
		},
			lootChance = 7000000
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
--Change this group to Faction loot group
		{
			groups = {
				{group = "mauler_common", chance = 10000000}
		},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "loot_kit_parts", chance = 10000000}
		},
			lootChance = 2000000
		}
	},
	weapons = {"pirate_weapons_heavy"},
	reactionStf = "@npc_reaction/fancy",
	attacks = merge(brawlermaster,marksmanmaster,bountyhuntermaster)
}

CreatureTemplates:addCreatureTemplate(mauler_lord, "mauler_lord")
