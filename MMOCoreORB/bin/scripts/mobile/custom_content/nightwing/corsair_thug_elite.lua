corsair_thug_elite = Creature:new {
	customName = "Mike (Dune Corsair Lt.)",
	socialGroup = "corsair",
	faction = "corsair",
	level = 100,
	chanceHit = 0.85,
	damageMin = 570,
	damageMax = 850,
	baseXp = 1864,
	baseHAM = 13300,
	baseHAMmax = 16300,
	armor = 3,
	resists = {65,65,50,75,75,70,70,65,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + AGGRESSIVE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_assassin_mission_giver_02.iff"},
	lootGroups = {
		{
			groups = {
				--{group = "g_carbine_bounty_ee3"", chance = 4000000},
				--{group = "g_blasterfist", chance = 3000000},
				{group = "composite_armor", chance = 6000000},
				{group = "junk", chance = 4000000},
			}
		}
	},
	weapons = {"ranged_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmannovice,brawlernovice)
}

CreatureTemplates:addCreatureTemplate(corsair_thug_elite, "corsair_thug_elite")
