scorching_terror = Creature:new {
	customName = "Scorching Terror",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 250,
	chanceHit = 30.0,
	damageMin = 2370,
	damageMax = 4250,
	baseXp = 25549,
	baseHAM = 340000,
	baseHAMmax = 429000,
	armor = 3,
	resists = {195,195,195,195,165,195,195,195,-1},
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

	templates = {"object/mobile/som/scorching_terror.iff"},
	scale = 5.0,
	lootGroups = {
		{
	        groups = {
					{group = "clothing_attachments",  chance = 4000000},
					{group = "weapons_all", chance = 4000000},
					{group = "holocron_dark",  chance = 1000000},
					{group = "holocron_light",  chance = 1000000},
			},
			lootChance = 10000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=100"},
		{"creatureareaknockdown","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(scorching_terror, "scorching_terror")
