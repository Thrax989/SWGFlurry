Mihpisto = Creature:new {
	--objectName = "@mob/creature_names:",
	customName = "Mihpisto (Odious Collector)",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 75.00,
	damageMin = 2200,
	damageMax = 3810,
	baseXp = 27849,
	baseHAM = 1321000,
	baseHAMmax = 1592000,
	armor = 0,
	resists = {70,70,70,70,70,70,70,70,70},
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
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.5,
	templates = {
		"object/mobile/dressed_geonosian_warrior_01.iff",
		"object/mobile/dressed_geonosian_warrior_02.iff",
		"object/mobile/dressed_geonosian_warrior_03.iff"},
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
	weapons = {"imperial_weapons_heavy"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster,pikemanmaster,fencermaster,swordsmanmaster,tkamaster,pistoleermaster,commandomaster)
}

CreatureTemplates:addCreatureTemplate(Mihpisto, "Mihpisto")