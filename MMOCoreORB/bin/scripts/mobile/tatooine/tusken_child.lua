tusken_child = Creature:new {
	objectName = "@mob/creature_names:tusken_child",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 8,
	chanceHit = 0.31,
	damageMin = 65,
	damageMax = 70,
	baseXp = 195,
	baseHAM = 410,
	baseHAMmax = 440,
	armor = 0,
	resists = {0,0,5,0,0,5,0,0,-1},
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
	templates = {"object/mobile/tusken_raider.iff"},
	scale = .65;

--NPC with AA/CA and Lootkit Template Tusken
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000},
		},
			lootChance = 500000 

		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000}
		},
			lootChance = 100000 
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
		},
			lootChance = 100000 
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
			lootChance = 100000
		},
		{
			groups = {
				{group = "tusken_common", chance = 10000000}
		},
			lootChance = 600000
		},
	},
	weapons = {"primitive_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmannovice,brawlernovice)
}

CreatureTemplates:addCreatureTemplate(tusken_child, "tusken_child")
