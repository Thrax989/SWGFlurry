iris_tananda_sinclair = Creature:new {
	customName = "Iris Tananda Sinclair",
	socialGroup = "valarian",
	faction = "valarian",
	level = 30,
	chanceHit = 1,
	damageMin = 300,
	damageMax = 335,
	baseXp = 1750,
	baseHAM = 3950,
	baseHAMmax = 4850,
	armor = 0,
	resists = {130,130,25,25,15,15,15,15,-1},
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
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
	
		"object/mobile/dressed_criminal_thug_human_female_02.iff"
	
	},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 2000000},
				{group = "wearables_common", chance = 2000000},
				{group = "tailor_components", chance = 1000000},
				{group = "loot_kit_parts", chance = 2000000},
				{group = "printer_parts", chance = 1500000},
				{group = "valarian_common", chance = 1500000}
				}
		}
	},
	weapons = {"pirate_weapons_medium"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster,swordsmannovice)
}

CreatureTemplates:addCreatureTemplate(iris_tananda_sinclair, "iris_tananda_sinclair")
