ancientigguardian = Creature:new {
	customName = "Ancient IG-88 Guardian",
	socialGroup = "mercenary",
	faction = "",
	level = 300,
	chanceHit = 25.00,
	damageMin = 300,
	damageMax = 400,
	baseXp = 500000,
	baseHAM = 500000,
	baseHAMmax = 510000,
	armor = 0,
	resists = {80,80,80,80,80,80,80,80,80},
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
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	templates = {"object/mobile/dressed_death_watch_grey.iff"},

	lootGroups = {
	},
	weapons = {"tusken_weapons"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(commandomaster,marksmanmaster,tkamaster,brawlermaster,fencermaster,swordsmanmaster,pikemanmaster,riflemanmaster,pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(ancientigguardian, "ancientigguardian")
