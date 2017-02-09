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
				{group = "holocron_dark", chance = 500000},
				{group = "holocron_light", chance = 500000},
				{group = "crystals_premium", chance = 500000},
				{group = "g_named_crystals", chance = 500000},
				{group = "weapons_all", chance = 3000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "dark_jedi_common", chance = 1000000}
			}
		}
	},
	weapons = {"light_jedi_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(ep3_rryatt_crazed_jedi, "ep3_rryatt_crazed_jedi")
