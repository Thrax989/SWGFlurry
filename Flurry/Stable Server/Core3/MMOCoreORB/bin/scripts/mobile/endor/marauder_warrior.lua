marauder_warrior = Creature:new {
	customName = "a Marauder Warrior",
	socialGroup = "endor_marauder",
	faction = "endor_marauder",
	level = 125,
	chanceHit = 1,
	damageMin = 645,
	damageMax = 1000,
	baseXp = 10174,
	baseHAM = 24000,
	baseHAMmax = 30000,
	armor = 0,
	resists = {10,65,10,80,80,35,80,80,50},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
    templates = {"object/mobile/tatooine_npc/hedon_istee.iff"},
    outfit = "marauder_outfit",
	

	lootGroups = {
		{
			groups = {
				{group = "marauder_armor_schems", chance = 10000000}
		},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "junk", chance = 10000000},
		},
			lootChance = 1000000 

		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000}
		},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
		},
			lootChance = 1000000
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
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(fencermaster,swordsmanmaster,pikemanmaster,tkamaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(marauder_warrior, "marauder_warrior")
