orf_torton = Creature:new {
	customName = "Sheldon, Lord of the Tortons",
	socialGroup = "mustafar",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 30,
	damageMin = 4450,
	damageMax = 5800,
	baseXp = 34675,
	baseHAM = 888500,
	baseHAMmax = 1311000,
	armor = 3,
	resists = {55,55,55,55,55,55,55,55,55},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.10,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 3.0,

	templates = {"object/mobile/som/orf_torton.iff"},
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
		{"creatureareaknockdown","stateAccuracyBonus=100"},
		{"knockdownattack",""},
		{"creatureareaknockdown",""},
		{"dizzyattack",""},
		{"stunattack",""},
		{"mildpoison",""},
		{"intimidationattack",""},
		{"mediumpoison",""},
		{"creatureareaattack",""}
	}
}
CreatureTemplates:addCreatureTemplate(orf_torton, "orf_torton")
