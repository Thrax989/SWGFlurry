xandank_onyx_plated = Creature:new {
	customName = "Onyx-plated xandank",
	socialGroup = "mustafar",
	pvpFaction = "",
	faction = "",
	level = 75,
	chanceHit = 10,
	damageMin = 1250,
	damageMax = 1600,
	baseXp = 3750,
	baseHAM = 22000,
	baseHAMmax = 32000,
	armor = 1,
	resists = {45,45,25,25,30,25,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.15,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/som/xandank_onyx_plated.iff"},
	scale = 1.8,
	lootGroups = {
		{
			groups = {
				{group = "armor_all", chance = 3500000},
				{group = "weapons_all", chance = 4000000},
				{group = "wearables_all", chance = 2500000}
			},
			lootChance = 2300000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareadisease",""},
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(xandank_onyx_plated, "xandank_onyx_plated")
