ruins_leader = Creature:new {
	customName = "Scavenger",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 57,
	chanceHit = 0.32,
	damageMin = 480,
	damageMax = 590,
	baseXp = 2257,
	baseHAM = 5500,
	baseHAMmax = 7300,
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

	templates = {"object/mobile/som/ruins_leader.iff"},
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

CreatureTemplates:addCreatureTemplate(ruins_leader, "ruins_leader")
