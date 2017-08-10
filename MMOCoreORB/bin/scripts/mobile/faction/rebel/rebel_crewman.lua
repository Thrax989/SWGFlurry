rebel_crewman = Creature:new {
	objectName = "@mob/creature_names:rebel_crewman",
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
	resists = {0,0,0,0,0,0,0,-1,-1},
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
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_rebel_crewman_human_female_01.iff",
		"object/mobile/dressed_rebel_crewman_human_female_02.iff",
		"object/mobile/dressed_rebel_crewman_human_male_01.iff",
		"object/mobile/dressed_rebel_crewman_human_male_02.iff",
		"object/mobile/dressed_rebel_crewman_human_male_03.iff",
		"object/mobile/dressed_rebel_crewman_human_male_04.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 200000},
				{group = "junk", chance = 8800000},
				{group = "clothing_attachments", chance = 500000},
				{group = "armor_attachments", chance = 500000}
				
			}
		}
	},
	weapons = {"rebel_weapons_medium"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	personalityStf = "@hireling/hireling_military",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(rebel_crewman, "rebel_crewman")
