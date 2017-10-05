fbase_rebel_commando_hard = Creature:new {
	objectName = "@mob/creature_names:fbase_rebel_commando_hard",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
	level = 88,
	chanceHit = 0.88,
	damageMin = 585,
	damageMax = 880,
	baseXp = 8800,
	baseHAM = 18000,
	baseHAMmax = 25000,
	armor = 1,
	resists = {30,30,30,130,30,130,-1,-1,-1},
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
		"object/mobile/dressed_rebel_commando_human_female_01.iff",
		"object/mobile/dressed_rebel_commando_human_male_01.iff",
		"object/mobile/dressed_rebel_commando_moncal_male_01.iff",
		"object/mobile/dressed_rebel_commando_rodian_male_01.iff",
		"object/mobile/dressed_rebel_commando_twilek_female_01.iff",
		"object/mobile/dressed_rebel_commando_zabrak_female_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 8500000},
				{group = "clothing_attachments", chance = 500000},
				{group = "armor_attachments", chance = 500000},
				{group = "jabba_common", chance = 500000},
				
					
			},
		},
			{
			groups = {
				{group = "g_imperial_credit", chance = 10000000},
				},
			lootChance = 20000 
			},
	},
	weapons = {"rebel_weapons_heavy"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(commandomid,marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(fbase_rebel_commando_hard, "fbase_rebel_commando_hard")
