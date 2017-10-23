rebel_warrant_officer_ii = Creature:new {
	objectName = "@mob/creature_names:rebel_warrant_officer_ii",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
	level = 16,
	chanceHit = 0.31,
	damageMin = 170,
	damageMax = 180,
	baseXp = 960,
	baseHAM = 2900,
	baseHAMmax = 3500,
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
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED + CONVERSABLE,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_rebel_second_lieutenant_human_female_01.iff",
		"object/mobile/dressed_rebel_second_lieutenant_rodian_male_01.iff",
		"object/mobile/dressed_rebel_second_lieutenant_trandoshan_male_01.iff",
		"object/mobile/dressed_rebel_second_lieutenant_twk_female_01.iff",
		"object/mobile/dressed_rebel_second_lieutenant_twk_male_01.iff",
		"object/mobile/dressed_rebel_second_lieutenant_zabrak_female_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 9000000},
				{group = "clothing_attachments", chance = 500000},
				{group = "armor_attachments", chance = 500000},					
			},
			lootChance = 10000000 
			},
			{
			groups = {
				{group = "g_imperial_credit", chance = 10000000},
				},
			lootChance = 20000 
			},
			{
			groups = {
				{group = "imppoints", chance = 10000000},
				},
			lootChance = 100000 
			}
	},
	weapons = {"rebel_weapons_medium"},
	conversationTemplate = "rebelRecruiterConvoTemplate",
	reactionStf = "@npc_reaction/military",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(rebel_warrant_officer_ii, "rebel_warrant_officer_ii")
