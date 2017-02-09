som_dark_jedi_minion_7 = Creature:new {
	customName = "Dark Jedi Overlord",
	socialGroup = "darkside",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 30,
	damageMin = 1645,
	damageMax = 3000,
	baseXp = 25266,
	baseHAM = 361000,
	baseHAMmax = 420000,
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
	scale = 1.3,

	templates = {"object/mobile/som/som_dark_jedi_minion_7.iff"},
	lootGroups = {
		{
			groups = {
				{group = "g_carbine_alliance_needler", chance = 1000000},
				{group = "crystals_premium", chance = 2500000},
				{group = "armor_attachments", chance = 1500000},
				{group = "clothing_attachments", chance = 1900000},
				{group = "g_sword_rebel", chance = 1500000},
				{group = "g_ep3_chiss_poacher_backpack", chance = 100000},
				{group = "g_punch_dagger", chance = 1500000}
			}
		},
		{
			groups = {
				{group = "g_lance_cryo", chance = 1000000},
				{group = "crystal_banes_heart", chance = 500000},
				{group = "crystal_bnars_sacrifice", chance = 500000},
				{group = "crystal_bondaras_folly", chance = 500000},
				{group = "crystal_dawn_of_dagobah", chance = 500000},
				{group = "crystal_gallias_intuition", chance = 500000},
				{group = "crystal_horns_future", chance = 500000},
				{group = "crystal_kenobis_legacy", chance = 500000},
				{group = "crystal_kits_ferocity", chance = 500000},
				{group = "crystal_kuns_blood", chance = 500000},
				{group = "crystal_mauls_vengence", chance = 500000},
				{group = "crystal_mundis_response", chance = 500000},
				{group = "crystal_prowess_of_plo_koon", chance = 500000},
				{group = "crystal_qui_gons_devotion", chance = 500000},
				{group = "crystal_quintessence_0f_the_force", chance = 500000},
				{group = "crystal_strength_of_luminaria", chance = 500000},
				{group = "crystal_sunriders_destiny", chance = 500000},
				{group = "crystal_ulics_redemption", chance = 500000},
				{group = "crystal_windus_guile", chance = 500000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"dark_jedi_weapons_gen3"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(som_dark_jedi_minion_7, "som_dark_jedi_minion_7")
