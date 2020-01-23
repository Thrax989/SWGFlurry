erib_kurrugh = Creature:new {
	customName = "Erib Kurrugh (a Sand Splitter founder)",
	socialGroup = "sand_splitter",
	faction = "sand_splitter",
	level = 24,
	chanceHit = 0.55,
	damageMin = 270,
	damageMax = 310,
	baseXp = 2543,
	baseHAM = 6800,
	baseHAMmax = 8300,
	armor = 1,
	resists = {20,20,20,20,20,20,20,-1,-1},
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
			"object/mobile/tatooine_sand_splitter_erib_kurrugh.iff"		
	},
	lootGroups = {},
	weapons = {"corsec_police_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(erib_kurrugh, "erib_kurrugh")
