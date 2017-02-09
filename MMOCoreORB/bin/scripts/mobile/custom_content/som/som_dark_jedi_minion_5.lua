som_dark_jedi_minion_5 = Creature:new {
	customName = "Dark Jedi Guard",
	socialGroup = "darkside",
	pvpFaction = "",
	faction = "",
	level = 265,
	chanceHit = 23.5,
	damageMin = 1245,
	damageMax = 2100,
	baseXp = 25266,
	baseHAM = 181000,
	baseHAMmax = 240000,
	armor = 3,
	resists = {90,90,90,90,90,90,90,90,-1},
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
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/som_dark_jedi_minion_5.iff"},
	lootGroups = {
		{
			groups = {
				{group = "g_baton_stun_legendary", chance = 600000},
				{group = "g_baton_trando_stun", chance = 600000},
				{group = "crystals_premium", chance = 600000},
				{group = "rifles", chance = 1300000},
				{group = "pistols", chance = 1300000},
				{group = "g_lance_kaminoan", chance = 1300000},
				{group = "armor_attachments", chance = 1200000},
				{group = "clothing_attachments", chance = 1300000},
				{group = "g_ep3_loot_heartstriker", chance = 1000000},
				{group = "g_lance_shock", chance = 800000}
			},
			lootChance = 9000000,
		}
	},
	weapons = {"dark_jedi_weapons_gen3"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(som_dark_jedi_minion_5, "som_dark_jedi_minion_5")
