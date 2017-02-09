mustafarian_02 = Creature:new {
	customName = "Mustafarian",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 129,
	chanceHit = 4.9,
	damageMin = 775,
	damageMax = 1260,
	baseXp = 12235,
	baseHAM = 51000,
	baseHAMmax = 62000,
	armor = 2,
	resists = {80,45,40,20,50,100,10,15,-1},
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

	templates = {"object/mobile/som/mustafarian_02.iff"},
	lootGroups = {
		{
		groups = {
				{group = "junk", chance = 4000000},
				{group = "nyax", chance = 3000000},
				{group = "grenades_looted", chance = 1000000},
				{group = "armor_attachments", chance = 1000000},
				{group = "clothing_attachments", chance = 1000000}
			}
		}
	},
	weapons = {"nyaxs_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/fancy",
	attacks = merge(marksmanmaster,riflemanmaster,carbineermaster,brawlermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(mustafarian_02, "mustafarian_02")
