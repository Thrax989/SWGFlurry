som_kenobi_reunite_dark_trooper = Creature:new {
	customName = "Dark Trooper",
	socialGroup = "self",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 50,
	damageMin = 1025,
	damageMax = 1760,
	baseXp = 17600,
	baseHAM = 113000,
	baseHAMmax = 197000,
	armor = 3,
	resists = {20,20,20,130,-1,130,-1,-1,-1},
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
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/som_kenobi_reunite_dark_trooper.iff"},
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
	weapons = {"st_bombardier_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/stormtrooper",
	attacks = merge(commandomaster,marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(som_kenobi_reunite_dark_trooper, "som_kenobi_reunite_dark_trooper")
