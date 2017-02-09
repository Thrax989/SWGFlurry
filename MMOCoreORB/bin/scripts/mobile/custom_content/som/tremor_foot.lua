tremor_foot = Creature:new {
	customName = "Tremor Foot",
	socialGroup = "mustafar",
	pvpFaction = "self",
	faction = "",
	level = 225,
	chanceHit = 30,
	damageMin = 2050,
	damageMax = 3200,
	baseXp = 12500,
	baseHAM = 275000,
	baseHAMmax = 395000,
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

	templates = {"object/mobile/som/tremor_foot.iff"},
	scale = 3.5,
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
		{"creatureareacombo","stateAccuracyBonus=100"},
		{"creatureareaknockdown","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(tremor_foot, "tremor_foot")
