gr_slavemaster = Creature:new {
	objectName = "@mob/creature_names:slavemaster",
	socialGroup = "",
	faction = "",
	level = 40,
	chanceHit = 0.240000,
	damageMin = 300,
	damageMax = 420,
	baseXp = 620,
	baseHAM = 11300,
	baseHAMmax = 13800,
	armor = 0,
	resists = {10,10,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.000000,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + ENEMY,
	creatureBitmask = NONE,
	diet = HERBIVORE,

	templates = {
				"object/mobile/dressed_tatooine_trandoshan_slaver.iff",
				"object/mobile/dressed_tatooine_slaver.iff"},
	lootGroups = {
      	{
			groups = {
				{group = "junk", chance = 4000000},
				{group = "wearables_common", chance = 3000000},
				{group = "loot_kit_parts", chance = 2000000},
				{group = "tailor_components", chance = 1000000},
			},
			lootChance = 10000000
		}
	},
	weapons = {"pirate_weapons_light"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(pistoleermaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(gr_slavemaster, "gr_slavemaster")
