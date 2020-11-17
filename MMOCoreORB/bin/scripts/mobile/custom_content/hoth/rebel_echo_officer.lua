rebel_echo_officer = Creature:new {
	objectName = "@mob/creature_names:rebel_echo_officer",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
	level = 22,
	chanceHit = 0.35,
	damageMin = 210,
	damageMax = 220,
	baseXp = 2219,
	baseHAM = 5900,
	baseHAMmax = 7200,
	armor = 0,
	resists = {5,5,5,5,5,5,5,5,-1},
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
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED + FACTIONAGGRO,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_rebel_snow_echo_base_f_01.iff",
		"object/mobile/dressed_rebel_snow_echo_base_f_02.iff",
		"object/mobile/dressed_rebel_snow_echo_base_f_02.iff",
		"object/mobile/dressed_rebel_snow_echo_base_f_04.iff",
		"object/mobile/dressed_rebel_snow_echo_base_m_01.iff",
		"object/mobile/dressed_rebel_snow_echo_base_m_02.iff",
		"object/mobile/dressed_rebel_snow_echo_base_m_03.iff",
		"object/mobile/dressed_rebel_snow_echo_base_m_04.iff"
		
	},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 100000},
				{group = "junk", chance = 4700000},
				{group = "rifles", chance = 1000000},
				{group = "pistols", chance = 1000000},
				{group = "melee_weapons", chance = 1000000},
				{group = "carbines", chance = 1000000},
				{group = "clothing_attachments", chance = 100000},
				{group = "armor_attachments", chance = 100000},
				{group = "wearables_common", chance = 1000000}
			}
		}
	},
	weapons = {"rebel_weapons_medium"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	personalityStf = "@hireling/hireling_military",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(rebel_echo_officer, "rebel_echo_officer")
