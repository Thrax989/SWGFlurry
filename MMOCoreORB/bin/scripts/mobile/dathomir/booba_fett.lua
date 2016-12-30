booba_fett = Creature:new {
	customName = "Booba Fett",
	socialGroup = "mandalorian",
	faction = "",
	level = 300,
	chanceHit = 95.00,
	damageMin = 3250,
	damageMax = 4000,
	baseXp = 30000,
	baseHAM = 300000,
	baseHAMmax = 400000,
	armor = 3,
	resists = {95,95,95,95,95,95,100,95,50},
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
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.55,

	templates = {"object/mobile/boba_fett.iff"},
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
				{group = "av_21_pp", chance = 1000000}
			},
			lootChance = 500000
		 },
		{
			groups = {
        {group = "bounty_hunter_armor", chance = 4500000},
				{group = "weapons_all", chance = 2000000},
				{group = "g_sword_mandalorian", chance = 500000},
				{group = "g_carbine_mandalorian", chance = 500000},
				{group = "g_blasterfist", chance = 500000},
				{group = "g_pistol_mandalorian", chance = 500000},
				{group = "g_2h_sword_katana", chance = 500000},
				{group = "g_rifle_mandalorian", chance = 500000},
				{group = "g_carbine_bounty_ee3", chance = 500000}
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
	},
	weapons = {"rebel_weapons_heavy"},
  conversationTemplate = "",
	attacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster,pistoleermaster,commandomaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(booba_fett, "booba_fett")
