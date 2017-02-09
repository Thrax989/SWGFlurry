ep3_rryatt_crazed_jedi = Creature:new {
	customName = "Crazed Jedi",
	socialGroup = "nightsister",
	faction = "",
	level = 120,
	chanceHit = 4.50,
	damageMin = 1250,
	damageMax = 1850,
	baseXp = 12000,
	baseHAM = 120000,
	baseHAMmax = 150000,
	armor = 2,
	resists = {70,70,70,70,70,70,70,70,-1},
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

	templates = {"object/mobile/ep3/ep3_rryatt_crazed_jedi.iff"},
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
	weapons = {"light_jedi_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(ep3_rryatt_crazed_jedi, "ep3_rryatt_crazed_jedi")
