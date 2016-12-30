ep3_clone_relics_durge = Creature:new {
	customName = "Durge",
	socialGroup = "",
	faction = "",
	level = 300,
	chanceHit = 30.0,
	damageMin = 3500,
	damageMax = 4500,
	baseXp = 30000,
	baseHAM = 1050000,
	baseHAMmax = 1500000,
	armor = 1,
	resists = {95,95,95,95,95,95,95,95,95},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ENEMY + ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED + INTERESTING,
	diet = HERBIVORE,

	templates = {"object/mobile/ep3/ep3_clone_relics_durge.iff"},
	lootGroups = {
		{
			groups = {
				{group = "pearls_flawless", chance = 5000000},
				{group = "death_watch_bunker_ingredient_protective",  chance = 100000},
				{group = "death_watch_bunker_ingredient_binary",  chance = 100000},
				{group = "armor_attachments", chance = 2400000},
				{group = "clothing_attachments", chance = 2400000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "composite_armor", chance = 1000000},
				{group = "bounty_hunter_armor", chance = 1500000},
				{group = "weapons_all", chance = 5000000},
				{group = "g_2h_sword_sith", chance = 500000},
				{group = "g_blasterfist", chance = 500000},
				{group = "g_carbine_dc15", chance = 500000},
				{group = "g_rifle_dc15", chance = 500000},
				{group = "g_rifle_bounty_dc15", chance = 500000}
			},
			lootChance = 10000000
	},
		{
			groups = {
				{group = "theme_park_reward_rebel_c_3po", chance = 2500000},
				{group = "jabba_theme_park_reelo", chance = 2500000},
				{group = "theme_park_reward_imperial_kaja", chance = 2500000},
				{group = "nyms_common", chance = 2500000}
			},
			lootChance = 10000000
	},
		{
			groups = {
				{group = "cyborggroup1", chance = 1700000},
				{group = "cyborggroup2", chance = 1700000},
				{group = "cyborggroup3", chance = 1700000},
				{group = "cyborggroup4", chance = 1700000},
				{group = "cyborggroup5", chance = 1600000},
				{group = "cyborggroup6", chance = 1600000}
			},
			lootChance = 5000000
	},
	},
	weapons = {"durge_weapons"},
	conversationTemplate = "",
	attacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster,pikemanmaster,fencermaster,swordsmanmaster,tkamaster,pistoleermaster,commandomaster)
}

CreatureTemplates:addCreatureTemplate(ep3_clone_relics_durge, "ep3_clone_relics_durge")
