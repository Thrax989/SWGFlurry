marauder_soldier = Creature:new {
	customName = "a Marauder Soldier",
	socialGroup = "endor_marauder",
	faction = "endor_marauder",
	level = 150,
	chanceHit = 3.75,
	damageMin = 570,
	damageMax = 1050,
	baseXp = 10174,
	baseHAM = 50000,
	baseHAMmax = 60000,
	armor = 0,
	resists = {20,70,20,60,60,45,80,80,25},
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
			lootChance = 1500000
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

CreatureTemplates:addCreatureTemplate(marauder_soldier, "marauder_soldier")