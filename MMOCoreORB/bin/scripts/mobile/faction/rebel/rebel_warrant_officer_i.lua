rebel_warrant_officer_i = Creature:new {
	objectName = "@mob/creature_names:rebel_warrant_officer_i",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
	level = 18,
	chanceHit = 0.32,
	damageMin = 170,
	damageMax = 180,
	baseXp = 1426,
	baseHAM = 4100,
	baseHAMmax = 5000,
	armor = 0,
	resists = {15,15,15,15,15,15,15,-1,-1},
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
	optionsBitmask = AIENABLED + CONVERSABLE,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_rebel_first_lieutenant_bothan_male_01.iff",
		"object/mobile/dressed_rebel_first_lieutenant_human_female_01.iff",
		"object/mobile/dressed_rebel_first_lieutenant_human_male_01.iff",
		"object/mobile/dressed_rebel_first_lieutenant_moncal_female_01.iff",
		"object/mobile/dressed_rebel_first_lieutenant_moncal_female_02.iff",
		"object/mobile/dressed_rebel_first_lieutenant_sullustan_male_01.iff"},
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

CreatureTemplates:addCreatureTemplate(rebel_warrant_officer_i, "rebel_warrant_officer_i")
