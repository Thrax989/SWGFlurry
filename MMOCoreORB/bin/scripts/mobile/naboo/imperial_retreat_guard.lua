imperial_retreat_guard = Creature:new {
	objectName = "@mob/creature_names:imperial_retreat_guard",
	socialGroup = "imperial",
	faction = "imperial",
	level = 72,
	chanceHit = 0.75,
	damageMin = 520,
	damageMax = 750,
	baseXp = 6931,
	baseHAM = 1200,
	baseHAMmax = 1500,
	armor = 0,
	resists = {0,0,0,0,30,-1,30,-1,-1},
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
	diet = HERBIVORE,

	templates = {"object/mobile/emperor_royal_guard.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 7800000},
				{group = "color_crystals", chance = 200000},
				{group = "tailor_components", chance = 1000000},
				{group = "loot_kit_parts", chance = 1000000}
			}
		}
	},
	weapons = {"imperial_weapons_medium"},
	reactionStf = "@npc_reaction/military",
	attacks = merge(brawlermaster,marksmanmaster,riflemanmaster,carbineermaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(imperial_retreat_guard, "imperial_retreat_guard")
