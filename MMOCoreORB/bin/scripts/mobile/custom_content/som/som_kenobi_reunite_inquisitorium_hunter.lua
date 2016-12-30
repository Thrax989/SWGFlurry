som_kenobi_reunite_inquisitorium_hunter = Creature:new {
	customName = "Inquisitorium hunter",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 110,
	chanceHit = 5,
	damageMin = 1250,
	damageMax = 1750,
	baseXp = 7800,
	baseHAM = 23450,
	baseHAMmax = 27752,
	armor = 2,
	resists = {40,40,25,25,30,30,40,25,-1},
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

	templates = {"object/mobile/som/som_kenobi_reunite_inquisitorium_hunter.iff"},
	lootGroups = {
		{
			groups = {
				{group = "clothing_attachments", chance = 6000000},
				{group = "pistols", chance = 750000},
				{group = "rifles", chance = 750000},
				{group = "carbines", chance = 750000},
				{group = "bounty_hunter_armor", chance = 200000},
				{group = "jetpack_base", chance = 50000},
				{group = "blacksunhelm1", chance = 500000},
				{group = "armor_attachments", chance = 500000},
				{group = "blacksun_rare", chance = 500000}
			}
		}
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster,swordsmanmaster,pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(som_kenobi_reunite_inquisitorium_hunter, "som_kenobi_reunite_inquisitorium_hunter")
