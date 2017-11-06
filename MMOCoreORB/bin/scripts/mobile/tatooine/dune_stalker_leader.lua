dune_stalker_leader = Creature:new {
	objectName = "@mob/creature_names:dune_stalker_leader",
	socialGroup = "dune_stalker",
	faction = "",
	level = 23,
	chanceHit = 0.35,
	damageMin = 220,
	damageMax = 230,
	baseXp = 2219,
	baseHAM = 6300,
	baseHAMmax = 7700,
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
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	templates = {"object/mobile/dressed_tatooine_dune_stalker_leader.iff"},

--NPC Printer Parts
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
		{
			groups = {
				{group = "printer_parts", chance = 10000000}
		},
			lootChance = 2000000
		}
	},
	weapons = {"tusken_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(dune_stalker_leader, "dune_stalker_leader")
