kobola_underboss = Creature:new {
	objectName = "@mob/creature_names:kobola_underboss",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "kobola",
	faction = "kobola",
	level = 25,
	chanceHit = 0.36,
	damageMin = 210,
	damageMax = 220,
	baseXp = 2637,
	baseHAM = 5900,
	baseHAMmax = 7200,
	armor = 0,
	resists = {35,35,0,-1,0,0,-1,-1,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_kobola_underboss_bith_female_01.iff",
		"object/mobile/dressed_kobola_underboss_bith_male_01.iff"},

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
				{group = "kobola_common", chance = 10000000}
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
	weapons = {"pirate_weapons_medium"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(kobola_underboss, "kobola_underboss")
