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
				{group = "g_carbine_rotary_underslung",  chance = 5000000},
				{group = "g_rifle_naktra_crystal", chance = 5000000}
			}
		},
		{
			groups = {
				{group = "g_ep3_loot_blackhand",  chance = 1500000},
				{group = "g_ep3_loot_corestrike", chance = 1500000},
				{group = "g_ep3_loot_dawnsorrow", chance = 1500000},
				{group = "g_ep3_loot_ripper", chance = 1000000},
				{group = "g_ep3_loot_sickle", chance = 1400000},
				{group = "g_massassiknuckler", chance = 1500000},
				{group = "g_lance_cryo",  chance = 1500000},
				{group = "g_ep3_chiss_poacher_backpack", chance = 100000}
			},
			lootChance = 10000000
		}
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
