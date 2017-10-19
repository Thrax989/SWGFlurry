senior_prophet_of_the_dark_side = Creature:new {
	objectName = "@mob/creature_names:senior_prophet_of_the_dark_side",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 138,
	chanceHit = 4.75,
	damageMin = 920,
	damageMax = 1550,
	baseXp = 13084,
	baseHAM = 50000,
	baseHAMmax = 61000,
	armor = 0,
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
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_dark_jedi_human_male_01.iff",
		"object/mobile/dressed_dark_jedi_human_female_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 8500000},
				{group = "clothing_attachments", chance = 500000},
				{group = "armor_attachments", chance = 500000},
				{group = "stormtrooper_common", chance = 500000},
					
			},
			lootChance = 10000000 
			},
			{
			groups = {
				{group = "g_rebel_credit", chance = 10000000},
				},
			lootChance = 20000 
			},
			{
			groups = {
				{group = "rebpoints", chance = 10000000},
				},
			lootChance = 100000 
			}
	},
	weapons = {"dark_jedi_weapons_gen3"},
	attacks = merge(lightsabermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(senior_prophet_of_the_dark_side, "senior_prophet_of_the_dark_side")
