mandalorian_aloruus = Creature:new {
	objectName = "",
	customName = "Mandalorian Alor'uus",
	socialGroup = "mandalorian",
	faction = "",
	level = 150,
	chanceHit = 15,
	damageMin = 750,
	damageMax = 1250,
	baseXp = 11390,
	baseHAM = 100000,
	baseHAMmax = 150000,
	armor = 0,
	resists = {55,55,70,60,30,30,100,40,10},
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

	templates = {"object/mobile/dressed_death_watch_red.iff"},
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
				{group = "weapons_all", chance = 2500000},
				{group = "g_sword_mandalorian", chance = 500000},
				{group = "g_carbine_mandalorian", chance = 500000},
				{group = "g_blasterfist", chance = 500000},
				{group = "g_pistol_mandalorian", chance = 500000},
				{group = "g_2h_sword_katana", chance = 500000},
				{group = "g_rifle_mandalorian", chance = 500000},
			},
			lootChance = 10000000
	},
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
  attacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster,pistoleermaster,commandomaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(mandalorian_aloruus, "mandalorian_aloruus")
