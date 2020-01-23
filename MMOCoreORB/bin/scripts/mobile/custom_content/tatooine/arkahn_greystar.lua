arkahn_greystar = Creature:new {
	customName = "Arkahn Greystar",
	socialGroup = "valarian",
	faction = "valarian",
	level = 28,
	chanceHit = 0.85,
	damageMin = 245,
	damageMax = 275,
	baseXp = 1550,
	baseHAM = 3250,
	baseHAMmax = 4100,
	armor = 0,
	resists = {125,125,25,15,10,10,10,15,-1},
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

	templates = {"object/mobile/arkahn_greystar.iff"},
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
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(arkahn_greystar, "arkahn_greystar")
