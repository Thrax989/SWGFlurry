jundak_devourer = Creature:new {
	customName = "Jundak Devourer",
	socialGroup = "mustafar",
	pvpFaction = "",
	faction = "",
	level = 60,
	chanceHit = 5,
	damageMin = 650,
	damageMax = 900,
	baseXp = 1675,
	baseHAM = 9500,
	baseHAMmax = 13500,
	armor = 0,
	resists = {10,10,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.10,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/som/jundak_devourer.iff"},
	scale = 1.7,
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

CreatureTemplates:addCreatureTemplate(jundak_devourer, "jundak_devourer")
