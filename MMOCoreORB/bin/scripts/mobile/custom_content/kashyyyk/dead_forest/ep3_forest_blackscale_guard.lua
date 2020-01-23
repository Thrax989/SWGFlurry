ep3_forest_blackscale_guard = Creature:new {
	customName = "a Blackscale Guard",
	socialGroup = "trandoshan",
	faction = "blackscale",
	level = 95,
	chanceHit = 0.95,
	damageMin = 850,
	damageMax = 1170,
	baseXp = 7500,
	baseHAM = 20000,
	baseHAMmax = 25000,
	armor = 2,
	resists = {40,40,80,60,35,55,75,40,-1},
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
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/ep3/ep3_blackscale_guard_m_01.iff",
		"object/mobile/ep3/ep3_blackscale_guard_m_02.iff",
		"object/mobile/ep3/ep3_blackscale_guard_m_03.iff",
		"object/mobile/ep3/ep3_blackscale_guard_m_04.iff"		
		},
	lootGroups = {
		{
			groups = {
				{group = "armor_attachments", chance = 3000000},
				{group = "clothing_attachments", chance = 3000000},
				{group = "melee_weapons", chance = 3000000},
				{group = "rifles", chance = 200000},
				{group = "pistols", chance = 600000},
				{group = "carbines", chance = 200000},

			}
		}
	},


	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = {
		{"intimidationattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(ep3_forest_blackscale_guard, "ep3_forest_blackscale_guard")
