fbase_imperial_exterminator = Creature:new {
	objectName = "@mob/creature_names:fbase_imperial_exterminator",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 43,
	chanceHit = 0.47,
	damageMin = 360,
	damageMax = 430,
	baseXp = 4300,
	baseHAM = 9600,
	baseHAMmax = 11800,
	armor = 0,
	resists = {5,5,5,-1,130,-1,130,-1,-1},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_imperial_exterminator.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 8500000},
				{group = "clothing_attachments", chance = 500000},
				{group = "armor_attachments", chance = 500000},
				{group = "stormtrooper_common", chance = 500000},
					
			},
			lootChance = 10000000 
			},
			{
			groups = {
				{group = "g_rebel_credit", chance = 10000000},
				},
			lootChance = 20000 
			},
			{
			groups = {
				{group = "rebpoints", chance = 10000000},
				},
			lootChance = 100000 
			}
	},
	weapons = {"imperial_weapons_medium"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(brawlermaster,marksmanmaster,riflemanmaster,teraskasinovice)
}

CreatureTemplates:addCreatureTemplate(fbase_imperial_exterminator, "fbase_imperial_exterminator")
