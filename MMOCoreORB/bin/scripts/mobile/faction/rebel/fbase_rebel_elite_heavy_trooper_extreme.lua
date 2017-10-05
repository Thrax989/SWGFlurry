fbase_rebel_elite_heavy_trooper_extreme = Creature:new {
	objectName = "@mob/creature_names:fbase_rebel_elite_heavy_trooper_extreme",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
	level = 270,
	chanceHit = 18.0,
	damageMin = 1495,
	damageMax = 2700,
	baseXp = 27000,
	baseHAM = 254000,
	baseHAMmax = 345000,
	armor = 3,
	resists = {140,30,30,150,150,150,150,-1,-1},
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
	creatureBitmask = PACK + STALKER + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_rebel_ris_01.iff",
		"object/mobile/dressed_rebel_ris_02.iff",
		"object/mobile/dressed_rebel_ris_03.iff",
		"object/mobile/dressed_rebel_ris_04.iff"},
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
	weapons = {"rebel_weapons_medium"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(brawlermaster,marksmanmaster,riflemanmaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(fbase_rebel_elite_heavy_trooper_extreme, "fbase_rebel_elite_heavy_trooper_extreme")
