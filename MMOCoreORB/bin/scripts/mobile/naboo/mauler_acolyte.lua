mauler_acolyte = Creature:new {
	objectName = "@mob/creature_names:mauler_acolyte",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "mauler",
	faction = "",
	level = 300,
	chanceHit = 25.00,
	damageMin = 1600,
	damageMax = 2000,
	baseXp = 25000,
	baseHAM = 80000,
	baseHAMmax = 90000,
	armor = 2,
	resists = {120,120,120,120,120,120,120,120,120},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_mauler_acolyte.iff"},
	lootGroups = {
		{
			groups = {
				{group = "trash_common", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "mauler_common", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "trash_rare", chance = 10000000},
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 3000000
		}
	},
	weapons = {"dark_jedi_weapons_gen2"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/fancy",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(mauler_acolyte, "mauler_acolyte")
