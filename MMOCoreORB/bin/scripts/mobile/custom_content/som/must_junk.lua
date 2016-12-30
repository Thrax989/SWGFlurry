must_junk = Creature:new {
	customName = "Crayzed Junk Dealer",
	socialGroup = "self",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 50,
	damageMin = 1550,
	damageMax = 1800,
	baseXp = 235,
	baseHAM = 160000,
	baseHAMmax = 190000,
	armor = 3,
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

	templates = {"object/mobile/som/must_junk.iff"},
	lootGroups = {
		{
			groups = {
				{group = "clothing_attachments", chance = 65000000},
				{group = "pistols", chance = 750000},
				{group = "rifles", chance = 750000},
				{group = "carbines", chance = 750000},
				{group = "bounty_hunter_armor", chance = 200000},
				{group = "blacksunhelm1", chance = 500000},
				{group = "armor_attachments", chance = 500000},
				{group = "blacksun_rare", chance = 500000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"pirate_weapons_light"},
	conversationTemplate = "",
	attacks = merge(marksmannovice,brawlernovice)
}

CreatureTemplates:addCreatureTemplate(must_junk, "must_junk")
