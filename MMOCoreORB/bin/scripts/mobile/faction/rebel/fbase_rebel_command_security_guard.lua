fbase_rebel_command_security_guard = Creature:new {
	objectName = "@mob/creature_names:fbase_rebel_command_security_guard",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
	level = 25,
	chanceHit = 0.37,
	damageMin = 240,
	damageMax = 250,
	baseXp = 2500,
	baseHAM = 7200,
	baseHAMmax = 8800,
	armor = 0,
	resists = {0,0,0,0,0,0,0,0,-1},
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

	templates = {"object/mobile/dressed_rebel_scout_bothan_male_01.iff",
			"object/mobile/dressed_rebel_scout_human_female_01.iff",
			"object/mobile/dressed_rebel_scout_human_female_02.iff",
			"object/mobile/dressed_rebel_scout_human_male_01.iff",
			"object/mobile/dressed_rebel_scout_rodian_male_01.iff",
			"object/mobile/dressed_rebel_scout_zabrak_female_01.iff"
	},
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
	weapons = {"rebel_weapons_light"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(marksmanmaster,brawlermaster,pistoleernovice)
}

CreatureTemplates:addCreatureTemplate(fbase_rebel_command_security_guard, "fbase_rebel_command_security_guard")
