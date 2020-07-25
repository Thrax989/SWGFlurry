bh_feral_force_wielder = Creature:new {
	objectName = "@mob/creature_names:feral_force_wilder",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "force",
	faction = "",
	level = 300,
	chanceHit = 1,
	damageMin = 1820,
	damageMax = 2350,
	baseXp = 10921,
	baseHAM = 124000,
	baseHAMmax = 130000,
	armor = 1,
	resists = {80,80,80,80,80,80,80,80,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_feral_force_wielder.iff"},
	lootGroups = {
		{
			groups = {
				{group = "tierone", chance = 2500000},
				{group = "tiertwo", chance = 1000000},
				{group = "tierthree", chance = 1000000},
				{group = "tierdiamond", chance = 1000000},
				{group = "non_jedi_rings_ranged", chance = 500000},
				{group = "capes", chance = 500000},
				{group = "power_crystals", chance = 500000},
				{group = "nge_all", chance = 500000},
				{group = "weapons_all", chance = 500000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "armor_attachments", chance = 1000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierone", chance = 2500000},
				{group = "tierrwo", chance = 1000000},
				{group = "tierthree", chance = 1000000},
				{group = "tierdiamond", chance = 1000000},
				{group = "non_jedi_rings", chance = 500000},
				{group = "g_necklaces", chance = 500000},
				{group = "color_crystals", chance = 500000},
				{group = "nge_all", chance = 500000},
				{group = "weapons_all", chance = 500000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "armor_attachments", chance = 1000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierone", chance = 2500000},
				{group = "tierrwo", chance = 1000000},
				{group = "tierthree", chance = 1000000},
				{group = "tierdiamond", chance = 1000000},
				{group = "vehicledeedsnormal", chance = 500000},
				{group = "vehicledeedsrare", chance = 500000},
				{group = "g_named_crystals", chance = 500000},
				{group = "nge_all", chance = 500000},
				{group = "weapons_all", chance = 500000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "armor_attachments", chance = 1000000}
			},
			lootChance = 10000000
		},
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(bh_feral_force_wielder, "bh_feral_force_wielder")
