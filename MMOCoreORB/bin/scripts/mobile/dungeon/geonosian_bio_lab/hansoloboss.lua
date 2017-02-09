hansoloboss = Creature:new {
	--objectName = "@mob/creature_names:",
	customName = "Han Solo Boss",
	socialGroup = "geonosian",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 100,
	damageMin = 100,
	damageMax = 5500,
	baseXp = 128840,
	baseHAM = 1750000,
	baseHAMmax = 2000000,
	armor = 0,
	resists = {40,40,40,40,40,40,40,40,40},
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
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/han_solo.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 5000000},
				{group = "armor_all", chance = 2500000},
				{group = "weapons_all", chance = 2500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "wearables_all", chance = 5000000},
				{group = "loot_kit_parts", chance = 2500000},
				{group = "tailor_components", chance = 2500000}
			},
			lootChance = 10000000
		},
		},
	weapons = {"rebel_weapons_heavy"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(pistoleermaster,commandomaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(hansoloboss, "hansoloboss")