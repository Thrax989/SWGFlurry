admiral_sait = Creature:new {
	customName = "Grand Admiral Sait",
	socialGroup = "imperial",
	faction = "imperial",
	level = 300,
	chanceHit = 32.25,
	damageMin = 1520,
	damageMax = 2750,
	baseXp = 26654,
	baseHAM = 321000,
	baseHAMmax = 392000,
	armor = 3,
	resists = {200,25,25,200,200,200,200,200,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE,
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/admiral_sait.iff"},
	lootGroups = {
	 	{
	        groups = {
				{group = "g_polearm_heroic_sd", chance = 2000000},
				{group = "g_carbine_heroic_sd", chance = 2000000},
				{group = "g_pistol_heroic_sd", chance = 2000000},
				{group = "g_rifle_a280", chance = 2000000},
				{group = "g_2h_sword_pvp_bf_01", chance = 2000000},
			}
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(tkamaster,fencermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(admiral_sait, "admiral_sait")
