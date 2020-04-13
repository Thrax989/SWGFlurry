bh_dark_adept = Creature:new {
	objectName = "@mob/creature_names:dark_adept",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "dark_jedi",
	faction = "",
	level = 300,
	chanceHit = 4.75,
	damageMin = 945,
	damageMax = 1200,
	baseXp = 13178,
	baseHAM = 50000,
	baseHAMmax = 61000,
	armor = 2,
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
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {" dark_jedi" },
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
	weapons = {"dark_jedi_weapons_gen2"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(bh_dark_adept, "bh_dark_adept")
