mandalorian_aliitalor = Creature:new {
	objectName = "",
	customName = "Mandalorian Aliit'alor",
	socialGroup = "mandalorian",
	faction = "",
     level = 300,
	chanceHit = 75.5,
	damageMin = 2250,
	damageMax = 2750,
	baseXp = 20948,
	baseHAM = 250000,
	baseHAMmax = 300000,
	armor = 3,
	resists = {80,80,90,80,45,45,100,70,40},
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
  creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.55,

	templates = {"object/mobile/dressed_death_watch_silver.iff"},
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
        {group = "bounty_hunter_armor", chance = 4500000},
				{group = "weapons_all", chance = 2000000},
				{group = "g_sword_mandalorian", chance = 500000},
				{group = "g_carbine_mandalorian", chance = 500000},
				{group = "g_2h_sword_katana", chance = 500000},
				{group = "g_pistol_mandalorian", chance = 500000},
				{group = "g_blasterfist", chance = 500000},
				{group = "g_rifle_mandalorian", chance = 500000},
				{group = "g_carbine_bounty_ee3", chance = 500000}
			},
			lootChance = 10000000
	},
	},
	weapons = {"death_watch_commander_weapons"},
	conversationTemplate = "",
  attacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster,pistoleermaster,commandomaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(mandalorian_aliitalor, "mandalorian_aliitalor")
