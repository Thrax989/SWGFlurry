mando_boss = Creature:new {
	-- objectName = "@mob/creature_names:",
	customName = "Mand'alor",
	pvpFaction = "",
	socialGroup = "",
	faction = "",
	level = 300,
	chanceHit = 65,
	damageMin = 3950,
	damageMax = 6580,
	baseXp = 321478,
	baseHAM = 2600000,
	baseHAMmax = 3800000,
	armor = 0,
	resists = {125,125,125,125,125,125,125,125,100},
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
	scale = 1.75,

	templates = {"object/mobile/dressed_death_watch_gold.iff"},
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
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster,swordsmanmaster,pistoleermaster,fencermaster,pikemanmaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(mando_boss, "mando_boss")
