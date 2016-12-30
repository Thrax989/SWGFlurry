hansoloboss = Creature:new {
	objectName = "@mob/creature_names:",
	customName = "Han Solo Boss",
	socialGroup = "geonosian_creature",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 100,
	damageMin = 100,
	damageMax = 5500,
	baseXp = 128840,
	baseHAM = 1750000,
	baseHAMmax = 2000000,
	armor = 3,
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
				{group = "saberhand24", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "saberhand25", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		},
		 {
			groups = {
				{group = "saberhand1", chance = 1000000},
				{group = "saberhand13", chance = 1000000},
				{group = "saberhand14", chance = 1000000},
				{group = "saberhand15", chance = 1000000},
				{group = "saberhand16", chance = 1000000},
				{group = "saberhand17", chance = 1000000},
				{group = "saberhand18", chance = 1000000},
				{group = "saberhand19", chance = 1000000},
				{group = "saberhand20", chance = 1000000},
				{group = "saberhand21", chance = 1000000}
			},
			lootChance = 10000000
		},
		},
	weapons = {"rebel_weapons_heavy"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(pistoleermaster,commandomaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(hansoloboss, "hansoloboss")