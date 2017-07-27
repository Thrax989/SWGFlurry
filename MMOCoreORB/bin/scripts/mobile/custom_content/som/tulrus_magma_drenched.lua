tulrus_magma_drenched = Creature:new {
	customName = "Magma-drenched tulrus",
	socialGroup = "mustafar",
	pvpFaction = "",
	faction = "",
	level = 65,
	chanceHit = 10,
	damageMin = 650,
	damageMax = 900,
	baseXp = 3500,
	baseHAM = 20000,
	baseHAMmax = 25000,
	armor = 2,
	resists = {55,55,55,55,55,55,55,-1,-1},
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
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/tulrus_magma_drenched.iff"},
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

CreatureTemplates:addCreatureTemplate(tulrus_magma_drenched, "tulrus_magma_drenched")
