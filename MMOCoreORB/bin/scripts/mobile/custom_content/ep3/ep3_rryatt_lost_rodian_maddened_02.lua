ep3_rryatt_lost_rodian_maddened_02 = Creature:new {
	customName = "Maddened Rodian",
	randomNameType = NAME_GENERIC_TAG,
	socialGroup = "",
	faction = "",
	level = 85,
	chanceHit = 0.85,
	damageMin = 650,
	damageMax = 970,
	baseXp = 7500,
	baseHAM = 30000,
	baseHAMmax = 35000,
	armor = 2,
	resists = {40,40,80,60,35,55,75,40,-1},
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
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/ep3/ep3_rryatt_lost_rodian_maddened_02.iff"},
	lootGroups = {
		{
			groups = {
				{group = "clothing_attachments", chance = 2500000},
	    	{group = "pistols", chance = 1000000},
	    	{group = "rifles", chance = 1000000},
	    	{group = "carbines", chance = 1000000},
	    	{group = "bounty_hunter_armor", chance = 250000},
	    	{group = "armor_attachments", chance = 2500000},
	    	{group = "melee_weapons", chance = 1000000},
	    	{group = "kashyyykian_black_mtn_armor", chance = 250000},
	    	{group = "kashyyykian_ceremonial_armor", chance = 250000},
	    	{group = "kashyyykian_hunting_armor", chance = 250000}
			}
		}
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(ep3_rryatt_lost_rodian_maddened_02, "ep3_rryatt_lost_rodian_maddened_02")
