blistmok_trampler = Creature:new {
	customName = "Blistmok trampler",
	socialGroup = "mustafar",
	pvpFaction = "",
	faction = "",
	level = 70,
	chanceHit = 5,
	damageMin = 550,
	damageMax = 700,
	baseXp = 1675,
	baseHAM = 12500,
	baseHAMmax = 13000,
	armor = 1,
	resists = {10,10,0,0,0,0,0,-1,-1},
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

	templates = {"object/mobile/som/blistmok_trampler.iff"},
	scale = 1.4,
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
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(blistmok_trampler, "blistmok_trampler")
