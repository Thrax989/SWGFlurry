coyn_captain = Creature:new {
	customName = "Coyn Captain",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 125,
	chanceHit = 10,
	damageMin = 1350,
	damageMax = 1950,
	baseXp = 9800,
	baseHAM = 33450,
	baseHAMmax = 47752,
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

	templates = {"object/mobile/som/coyn_captain.iff"},
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

CreatureTemplates:addCreatureTemplate(coyn_captain, "coyn_captain")
