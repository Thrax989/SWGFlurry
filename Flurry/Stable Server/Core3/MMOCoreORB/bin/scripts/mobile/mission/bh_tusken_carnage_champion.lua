bh_tusken_carnage_champion = Creature:new {
	objectName = "@mob/creature_names:tusken_fort_tusken_champion",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 300,
	chanceHit = 3.85,
	damageMin = 750,
	damageMax = 1210,
	baseXp = 11015,
	baseHAM = 143000,
	baseHAMmax = 153000,
	armor = 3,
	resists = {85,85,85,100,85,100,85,85,85},
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
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/tusken_raider.iff"},
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
		},
	},
	weapons = {"tusken_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,brawlermaster,fencermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(bh_tusken_carnage_champion, "bh_tusken_carnage_champion")
