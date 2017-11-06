mauler_master = Creature:new {
	objectName = "@mob/creature_names:mauler_master",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "mauler",
	faction = "",
	level = 54,
	chanceHit = 0.5,
	damageMin = 395,
	damageMax = 500,
	baseXp = 5190,
	baseHAM = 10000,
	baseHAMmax = 12000,
	armor = 1,
	resists = {65,35,90,90,90,-1,-1,-1,-1},
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
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	templates = {"object/mobile/dressed_mauler_master.iff"},

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
	conversationTemplate = "",
	reactionStf = "@npc_reaction/fancy",
	attacks = merge(brawlermaster,marksmanmaster,bountyhuntermaster)
}

CreatureTemplates:addCreatureTemplate(mauler_master, "mauler_master")
