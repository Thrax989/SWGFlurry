ep3_canopy_boss = Creature:new {
	customName = "Canopy Boss",
	randomNameType = NAME_GENERIC_TAG,
	socialGroup = "",
	faction = "",
	level = 130,
	chanceHit = 1.33,
	damageMin = 1800,
	damageMax = 2500,
	baseXp = 13000,
	baseHAM = 145000,
	baseHAMmax = 155000,
	armor = 3,
	resists = {80,80,80,60,35,55,75,20,-1},
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

	templates = {"object/mobile/ep3/ep3_canopy_boss.iff"},
	lootGroups = {
		{
			groups = {
				{group = "clothing_attachments", chance = 2250000},
				{group = "pistols", chance = 1000000},
				{group = "rifles", chance = 1000000},
				{group = "carbines", chance = 1000000},
				{group = "bounty_hunter_armor", chance = 250000},
				{group = "armor_attachments", chance = 2250000},
				{group = "melee_weapons", chance = 1000000},
				{group = "kashyyykian_black_mtn_armor", chance = 250000},
				{group = "kashyyykian_ceremonial_armor", chance = 250000},
				{group = "kashyyykian_hunting_armor", chance = 250000},
				{group = "g_ep3_chiss_poacher_backpack", chance = 250000},
				{group = "g_lance_kaminoan", chance = 250000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster,commandomaster,bountyhuntermaster)
}

CreatureTemplates:addCreatureTemplate(ep3_canopy_boss, "ep3_canopy_boss")
