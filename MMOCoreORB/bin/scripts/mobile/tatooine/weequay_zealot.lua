weequay_zealot = Creature:new {
	objectName = "@mob/creature_names:weequay_zealot",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "weequay",
	faction = "",
	level = 11,
	chanceHit = 0.29,
	damageMin = 140,
	damageMax = 150,
	baseXp = 514,
	baseHAM = 675,
	baseHAMmax = 825,
	armor = 0,
	resists = {0,0,15,0,0,0,0,-1,-1},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	templates = {"object/mobile/dressed_tatooine_weequay_zealot.iff"},
		
--NPC (Faction Loot) Default Template with Printer Parts
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
				{group = "weequay_common", chance = 10000000}
		},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "printer_parts", chance = 10000000}
		},
			lootChance = 2000000
		}
	},
	weapons = {"rebel_weapons_heavy"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(brawlermid,marksmanmid)
}

CreatureTemplates:addCreatureTemplate(weequay_zealot, "weequay_zealot")
