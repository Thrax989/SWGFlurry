som_kenobi_sucker = Creature:new {
	customName = "Sucker",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 90,
	chanceHit = 1.20,
	damageMin = 650,
	damageMax = 900,
	baseXp = 235,
	baseHAM = 23000,
	baseHAMmax = 26000,
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
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/som_kenobi_sucker.iff"},
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

CreatureTemplates:addCreatureTemplate(som_kenobi_sucker, "som_kenobi_sucker")
