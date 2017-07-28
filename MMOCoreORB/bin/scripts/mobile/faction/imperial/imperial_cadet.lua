imperial_cadet = Creature:new {
	objectName = "@mob/creature_names:imperial_cadet",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 9,
	chanceHit = 0.27,
	damageMin = 80,
	damageMax = 90,
	baseXp = 292,
	baseHAM = 675,
	baseHAMmax = 825,
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
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_imperial_soldier_m.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 200000},
				{group = "junk", chance = 8800000},
				{group = "clothing_attachments", chance = 500000},
				{group = "armor_attachments", chance = 500000},
				
			}
		}
	},
	weapons = {"ranged_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	personalityStf = "@hireling/hireling_military",
	attacks = merge(marksmannovice,brawlernovice)
}

CreatureTemplates:addCreatureTemplate(imperial_cadet, "imperial_cadet")
