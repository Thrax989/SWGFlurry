ep3_etyyy_laen_pieweto = Creature:new {
	customName = "Laen Pieweto, Chiss Poacher Leader",
	--randomNameType = NAME_GENERIC_TAG,
	socialGroup = "self",
	faction = "",
	level = 47,
	chanceHit = 0.47,
	damageMin = 500,
	damageMax = 600,
	baseXp = 4700,
	baseHAM = 20000,
	baseHAMmax = 25000,
	armor = 2,
	resists = {80,80,80,40,40,0,0,-1,-1},
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
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/ep3/ep3_etyyy_laen_pieweto.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 5000000},
				{group = "armor_all", chance = 2500000},
				{group = "weapons_all", chance = 2500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "wearables_all", chance = 5000000},
				{group = "loot_kit_parts", chance = 2500000},
				{group = "tailor_components", chance = 2500000}
			},
			lootChance = 10000000
		},
		},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(ep3_etyyy_laen_pieweto, "ep3_etyyy_laen_pieweto")
