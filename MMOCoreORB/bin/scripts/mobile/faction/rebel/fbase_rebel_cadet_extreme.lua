fbase_rebel_cadet_extreme = Creature:new {
	objectName = "@mob/creature_names:fbase_rebel_cadet_extreme",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
	level = 132,
	chanceHit = 4.2,
	damageMin = 805,
	damageMax = 1320,
	baseXp = 13200,
	baseHAM = 55000,
	baseHAMmax = 78000,
	armor = 2,
	resists = {115,115,10,10,10,-1,10,-1,-1},
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
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_rebel_pilot_human_female_01.iff",
		"object/mobile/dressed_rebel_pilot_human_male_01.iff",
		"object/mobile/dressed_rebel_pilot_human_male_02.iff",
		"object/mobile/dressed_rebel_pilot_rodian_male_01.iff",
		"object/mobile/dressed_rebel_pilot_sullustan_male_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 9000000},
				{group = "clothing_attachments", chance = 500000},
				{group = "armor_attachments", chance = 500000},
				
					
			},
		},
			{
			groups = {
				{group = "g_imperial_credit", chance = 10000000},
				},
			lootChance = 20000 
			},
	},
	weapons = {"rebel_weapons_light"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(brawlermaster,marksmanmaster,pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(fbase_rebel_cadet_extreme, "fbase_rebel_cadet_extreme")
