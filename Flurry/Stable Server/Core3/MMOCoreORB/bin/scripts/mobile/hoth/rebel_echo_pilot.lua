rebel_echo_pilot = Creature:new {
	objectName = "@mob/creature_names:rebel_echo_pilot",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
	level = 15,
	chanceHit = 0.31,
	damageMin = 160,
	damageMax = 170,
	baseXp = 831,
	baseHAM = 2400,
	baseHAMmax = 3000,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED + FACTIONAGGRO,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_rebel_pilot_echo_base_human_male_01.iff",
		"object/mobile/dressed_rebel_pilot_echo_base_human_male_02.iff",
		"object/mobile/dressed_rebel_pilot_echo_base_human_male_03.iff",
		"object/mobile/dressed_rebel_pilot_echo_base_human_male_04.iff"
	},
		
	lootGroups = {},
	weapons = {"rebel_weapons_light"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	personalityStf = "@hireling/hireling_military",
	attacks = merge(brawlermid,marksmanmid)
}

CreatureTemplates:addCreatureTemplate(rebel_echo_pilot, "rebel_echo_pilot")
