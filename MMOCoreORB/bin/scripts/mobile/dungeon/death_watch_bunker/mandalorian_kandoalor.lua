mandalorian_kandoalor = Creature:new {
	objectName = "",
	customName = "Mandalorian Kando'alor",
	socialGroup = "mandalorian",
	faction = "",
     level = 200,
	chanceHit = 20,
	damageMin = 1750,
	damageMax = 2250,
	baseXp = 16794,
	baseHAM = 200000,
	baseHAMmax = 250000,
	armor = 3,
	resists = {75,75,90,80,45,45,100,70,30},
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

	templates = {"object/mobile/dressed_death_watch_grey.iff"},
  lootGroups = {
		{
			groups = {
				{group = "weapons_all", chance = 5000000},
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
				{group = "g_blasterfist", chance = 500000},
				{group = "g_pistol_mandalorian", chance = 500000},
				{group = "g_2h_sword_katana", chance = 500000},
				{group = "g_rifle_mandalorian", chance = 500000},
				{group = "g_carbine_bounty_ee3", chance = 500000}
			},
			lootChance = 10000000
	},
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster,pistoleermaster,commandomaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(mandalorian_kandoalor, "mandalorian_kandoalor")
