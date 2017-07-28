canyon_corsair_scout = Creature:new {
	objectName = "@mob/creature_names:canyon_corsair_scout",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "canyon_corsair",
	faction = "canyon_corsair",
	level = 29,
	chanceHit = 0.39,
	damageMin = 290,
	damageMax = 300,
	baseXp = 3005,
	baseHAM = 8400,
	baseHAMmax = 10200,
	armor = 0,
	resists = {25,20,20,20,20,-1,-1,-1,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_corsair_scout_hum_f.iff",
		"object/mobile/dressed_corsair_scout_hum_m.iff",
		"object/mobile/dressed_corsair_scout_rod_m.iff",
		"object/mobile/dressed_corsair_scout_wee_m.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 6500000},
				{group = "tailor_components", chance = 1000000},
				{group = "color_crystals", chance = 500000},
				{group = "clothing_attachments", chance = 500000},
				{group = "armor_attachments", chance = 500000},
				{group = "canyon_corsair_common", chance = 1000000}
			}
		}
	},
	weapons = {"canyon_corsair_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(swordsmanmaster,carbineermaster,tkamaster,brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(canyon_corsair_scout, "canyon_corsair_scout")
