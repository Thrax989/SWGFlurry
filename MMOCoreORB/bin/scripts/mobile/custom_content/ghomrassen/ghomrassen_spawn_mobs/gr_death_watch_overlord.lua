gr_death_watch_overlord = Creature:new {
	objectName = "",
	customName = "Death Watch Overlord",
	socialGroup = "death_watch",
	faction = "",
	level = 221,
	chanceHit = 19,
	damageMin = 1245,
	damageMax = 2200,
	baseXp = 20948,
	baseHAM = 50000,
	baseHAMmax = 50000,
	armor = 3,
	resists = {40,80,90,80,45,45,50,70,55},
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

	templates = {"object/mobile/dressed_death_watch_gold.iff"},
	lootGroups = {
		{
			groups = {
				{group = "death_watch_bunker_overlord_shared", chance =  2000000},
				{group = "mandalorian_schemes", chance = 8000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "death_watch_bunker_overlord_shared", chance =  2500000},
				{group = "death_watch_bunker_overlord_quest", chance  = 7500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}
			},
			lootChance = 10000000
		},
	},
	weapons = {"dark_trooper_weapons"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,fencermaster,marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(gr_death_watch_overlord, "gr_death_watch_overlord")
