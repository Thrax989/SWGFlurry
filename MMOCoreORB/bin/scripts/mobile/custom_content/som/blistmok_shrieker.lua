blistmok_shrieker = Creature:new {
	customName = "Blistmok Shrieker",
	socialGroup = "mustafar",
	pvpFaction = "",
	faction = "",
	level = 80,
	chanceHit = 5,
	damageMin = 650,
	damageMax = 800,
	baseXp = 1675,
	baseHAM = 18500,
	baseHAMmax = 21000,
	armor = 1,
	resists = {40,30,20,20,20,20,20,-1,-1},
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

	templates = {"object/mobile/som/blistmok_shrieker.iff"},
	scale = 2.0,
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 5000000},
				{group = "armor_all", chance = 2500000},
				{group = "weapons_all", chance = 2500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "wearables_all", chance = 5000000},
				{group = "loot_kit_parts", chance = 2500000},
				{group = "tailor_components", chance = 2500000}
			},
			lootChance = 10000000
		},
		},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(blistmok_shrieker, "blistmok_shrieker")
