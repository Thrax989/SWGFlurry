marauder_boss = Creature:new {
	customName = "The Marauder Warlord",
	socialGroup = "endor_marauder",
	faction = "endor_marauder",
	level = 300,
	chanceHit = 30,
	damageMin = 1250,
	damageMax = 2500,
	specialDamageMult = 2.5,
	baseXp = 28549,
	baseHAM = 400000,
	baseHAMmax = 525000,
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
			lootChance = 5000000
		},
		{
			groups = {
				{group = "marauder_armor_schems", chance = 10000000}
		},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "marauder_armor_schems", chance = 10000000}
		},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "marauder_armor_schems", chance = 10000000}
		},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000}
		},
			lootChance = 9000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000}
		},
			lootChance = 9000000
		},
		{
			groups = {
				{group = "tierone", chance = 10000000}
		},
			lootChance = 7500000
		},
		{
			groups = {
				{group = "tiertwo", chance = 10000000}
		},
			lootChance = 3500000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}
		},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "tiertwo", chance = 10000000}
		},
			lootChance = 3500000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}
		},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "tiertwo", chance = 10000000}
		},
			lootChance = 3500000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}
		},
			lootChance = 1000000
		},
},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(fencermaster,swordsmanmaster,tkamaster,pikemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(marauder_boss, "marauder_boss")