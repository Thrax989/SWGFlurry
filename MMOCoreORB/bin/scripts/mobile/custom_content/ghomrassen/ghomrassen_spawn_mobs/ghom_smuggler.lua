ghom_smuggler = Creature:new {
	customName = "Smuggler",
	socialGroup = "thug",
	faction = "thug",
	level = 85,
	chanceHit = 0.35,
	damageMin = 400,
	damageMax = 600,
	baseXp = 4219,
	baseHAM = 15900,
	baseHAMmax = 17200,
	armor = 0,
	resists = {10,10,10,30,-1,30,-1,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 4,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_criminal_slicer_human_male_01.iff"},
	lootGroups = {
		{
	        	groups = {
				{group = "junk", chance = 4000000},
				{group = "wearables_common", chance = 2000000},
				{group = "rifles", chance = 1000000},
				{group = "pistols", chance = 1000000},
				{group = "melee_weapons", chance = 1000000},
				{group = "carbines", chance = 1000000},
			},
			lootChance = 2100000
		}
	},
	weapons = {"geonosian_mercenary_weapons"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(marksmanmaster,brawlermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(ghom_smuggler, "ghom_smuggler")
