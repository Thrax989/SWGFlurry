first_brigade_technician = Creature:new {
	objectName = "@mob/creature_names:brigade_technician",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "restuss",
	faction = "restuss",
	level = 11,
	chanceHit = 0.29,
	damageMin = 120,
	damageMax = 130,
	baseXp = 430,
	baseHAM = 1000,
	baseHAMmax = 1200,
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
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_brigade_technician_human_male_01.iff",
		"object/mobile/dressed_brigade_technician_human_female_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 500000},
				{group = "junk", chance = 6500000},
				{group = "loot_kit_parts", chance = 2000000},
				{group = "tailor_components", chance = 1000000}
			}
		}
	},
	weapons = {"rebel_weapons_light"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/townperson",
	attacks = merge(brawlermid,marksmanmid)
}

CreatureTemplates:addCreatureTemplate(first_brigade_technician, "first_brigade_technician")
