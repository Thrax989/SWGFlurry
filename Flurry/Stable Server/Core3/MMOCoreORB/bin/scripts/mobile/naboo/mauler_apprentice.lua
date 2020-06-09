mauler_apprentice = Creature:new {
	objectName = "@mob/creature_names:mauler_apprentice",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "mauler",
	faction = "",
	level = 300,
	chanceHit = 25.00,
	damageMin = 1500,
	damageMax = 1900,
	baseXp = 25000,
	baseHAM = 90000,
	baseHAMmax = 100000,
	armor = 1,
	resists = {115,115,115,115,115,115,115,115,115},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + AGGRESSIVE + ENEMY,
	creatureBitmask = PACK + KILLER,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_mauler_apprentice.iff"},
	lootGroups = {
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "mauler_common", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 10000000
		}
	},
	weapons = {"pirate_weapons_heavy"},
	reactionStf = "@npc_reaction/fancy",
	attacks = merge(tkamaster,swordsmanmaster,fencermaster)
}

CreatureTemplates:addCreatureTemplate(mauler_apprentice, "mauler_apprentice")
