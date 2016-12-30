vansk_blackguard = Creature:new {
	customName = "Vansk Blackguard",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 117,
	chanceHit = 15,
	damageMin = 1550,
	damageMax = 1800,
	baseXp = 5335,
	baseHAM = 28000,
	baseHAMmax = 35000,
	armor = 2,
	resists = {55,55,70,45,75,80,55,45,-1},
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

	templates = {"object/mobile/som/vansk_blackguard.iff"},
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
			}
		}
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster,swordsmanmaster,pistoleermaster)
}
CreatureTemplates:addCreatureTemplate(vansk_blackguard, "vansk_blackguard")
