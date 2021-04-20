igbattleforeman = Creature:new {
	customName = "Battle Foreman",
	socialGroup = "mercenary",
	faction = "",
	level = 300,
	chanceHit = 25.00,
	damageMin = 200,
	damageMax = 300,
	baseXp = 300000,
	baseHAM = 175000,
	baseHAMmax = 200000,
	armor = 0,
	resists = {130,140,140,140,140,140,140,140,120},
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
	templates = {"object/mobile/som/som_kenobi_reunite_dark_trooper.iff"},
	lootGroups = {
		{
			groups = {
				{group = "trash_common", chance = 10000000},
			},
			lootChance = 800000
		},
		{
			groups = {
				{group = "trash_rare", chance = 10000000},
			},
			lootChance = 600000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 500000
		}
	},
	weapons = {"tusken_weapons"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(commandomaster,marksmanmaster,tkamaster,brawlermaster,fencermaster,swordsmanmaster,pikemanmaster,riflemanmaster,pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(igbattleforeman, "igbattleforeman")
