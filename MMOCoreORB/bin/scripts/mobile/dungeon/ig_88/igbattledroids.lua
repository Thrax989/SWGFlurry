igbattledroids = Creature:new {
	customName = "Battle Droid",
	socialGroup = "mercenary",
	faction = "",
	level = 300,
	chanceHit = 25.00,
	damageMin = 100,
	damageMax = 200,
	baseXp = 100000,
	baseHAM = 100000,
	baseHAMmax = 110000,
	armor = 0,
	resists = {40,40,40,40,40,40,40,40,40},
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
	scale = 1.15,

	templates = {
		"object/mobile/battle_droid.iff"
	},
	lootGroups = {
	},
	weapons = {"tusken_weapons"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(tkamaster,brawlermaster,fencermaster,swordsmanmaster,pikemanmaster,marksmanmaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(igbattledroids, "igbattledroids")
