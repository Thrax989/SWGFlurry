bh_singing_mountain_clan_arch_witch = Creature:new {
	objectName = "@mob/creature_names:singing_mtn_clan_arch_witch",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "mtn_clan",
	faction = "mtn_clan",
	level = 300,
	chanceHit = 1,
	damageMin = 645,
	damageMax = 1000,
	baseXp = 10174,
	baseHAM = 124000,
	baseHAMmax = 130000,
	armor = 2,
	resists = {100,95,95,100,100,100,100,100,-1},
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
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_sing_mt_clan_arch_witch.iff"},
	lootGroups = {
		{
			groups = {
				{group = "tierone", chance = 2500000},
				{group = "tierrwo", chance = 1000000},
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
			lootChance = 5400000
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
			lootChance = 5400000
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
			lootChance = 5400000
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,pikemanmaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(bh_singing_mountain_clan_arch_witch, "bh_singing_mountain_clan_arch_witch")
