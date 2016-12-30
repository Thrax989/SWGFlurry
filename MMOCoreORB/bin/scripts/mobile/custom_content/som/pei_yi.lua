pei_yi = Creature:new {
	customName = "Pei Yi",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 90,
	chanceHit = 5,
	damageMin = 650,
	damageMax = 800,
	baseXp = 2735,
	baseHAM = 15000,
	baseHAMmax = 14000,
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
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/pei_yi.iff"},
	lootGroups = {
		{
			groups = {},
			lootChance = 2100000
		}
	},
	weapons = {"pirate_weapons_light"},
	conversationTemplate = "",
	attacks = merge(marksmannovice,brawlernovice)
}

CreatureTemplates:addCreatureTemplate(pei_yi, "pei_yi")
