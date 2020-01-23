emanon = Creature:new {
	customName = "Emanon",
	socialGroup = "valarian",
	faction = "valarian",
	level = 28,
	chanceHit = 0.85,
	damageMin = 255,
	damageMax = 285,
	baseXp = 1550,
	baseHAM = 3550,
	baseHAMmax = 4450,
	armor = 0,
	resists = {130,125,25,15,10,10,10,15,-1},
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

	templates = {"object/mobile/emanon.iff"},
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

CreatureTemplates:addCreatureTemplate(emanon, "emanon")
