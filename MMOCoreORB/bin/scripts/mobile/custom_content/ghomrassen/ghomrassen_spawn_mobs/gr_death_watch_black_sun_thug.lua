gr_death_watch_black_sun_thug = Creature:new {
	objectName = "@mob/creature_names:mand_bunker_blksun_thug",
	socialGroup = "death_watch",
	faction = "",
	level = 86,
	chanceHit = 0.85,
	damageMin = 570,
	damageMax = 850,
	baseXp = 8130,
	baseHAM = 15000,
	baseHAMmax = 15000,
	armor = 1,
	resists = {40,40,60,35,55,70,35,40,55},
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

	templates = {"object/mobile/dressed_black_sun_thug.iff"},
	lootGroups = {
		{
			groups = {
				{group = "pistols", chance = 3333333},
				{group = "rifles", chance = 3333333},
				{group = "carbines", chance = 3333334}
			},
			lootChance = 100000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}
			},
			lootChance = 100000000
		},	
		{
			groups = {
				{group = "jetpack_parts", chance = 2500000},				
				{group = "bounty_hunter_armor", chance = 2500000},
				{group = "crystals_premium", chance = 2500000},
				{group = "jetpack_base", chance = 2500000}
			},
			lootChance = 100000000
		},
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(gr_death_watch_black_sun_thug, "gr_death_watch_black_sun_thug")
