deathsting = Creature:new {
	customName = "Deathsting",
	socialGroup = "mustafar",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 30.0,
	damageMin = 2570,
	damageMax = 4550,
	baseXp = 30549,
	baseHAM = 440000,
	baseHAMmax = 529000,
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
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/deathsting.iff"},
	scale = 3.0,
	lootGroups = {
		{
	        groups = {
					{group = "clothing_attachments",  chance = 3000000},
					{group = "weapons_all", chance = 3000000},
					{group = "holocron_dark",  chance = 1000000},
					{group = "holocron_light",  chance = 1000000},
					{group = "crystal_quintessence_of_the_force", chance = 1000000},
					{group = "crystal_mauls_vengence", chance = 1000000},
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

CreatureTemplates:addCreatureTemplate(deathsting, "deathsting")
