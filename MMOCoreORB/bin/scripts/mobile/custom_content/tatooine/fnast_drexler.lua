fnast_drexler = Creature:new {
	customName = "Fnast Drexler",
	socialGroup = "valarian",
	faction = "valarian",
	level = 30,
	chanceHit = 0.85,
	damageMin = 285,
	damageMax = 315,
	baseXp = 1750,
	baseHAM = 3750,
	baseHAMmax = 4650,
	armor = 0,
	resists = {130,130,25,15,10,15,15,15,-1},
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

	templates = {"object/mobile/fnast_drexler.iff"},
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

CreatureTemplates:addCreatureTemplate(fnast_drexler, "fnast_drexler")

