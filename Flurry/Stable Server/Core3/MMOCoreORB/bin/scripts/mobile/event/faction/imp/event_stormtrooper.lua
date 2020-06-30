event_stormtrooper = Creature:new {
	objectName = "@mob/creature_names:stormtrooper",
	randomNameType = NAME_STORMTROOPER,
	socialGroup = "imperial",
	pvpFaction = "imperial",
	faction = "imperial",
	level = 300,
	chanceHit = 100,
	damageMin = 2270,
	damageMax = 2350,
	baseXp = 10081,
	baseHAM = 629000,
	baseHAMmax = 856000,
	armor = 3,
	resists = {180,180,180,180,180,180,180,180,180},
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
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.05,

	templates = {"object/mobile/dressed_stormtrooper_m.iff"},
	lootGroups = {
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000},
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000},
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "weapons_all", chance = 10000000},
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 2000000
		}
	},
	weapons = {"stormtrooper_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/stormtrooper",
	personalityStf = "@hireling/hireling_stormtrooper",		
	attacks = merge(riflemanmaster,carbineermaster,brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(event_stormtrooper, "event_stormtrooper")