cinderclaw = Creature:new {
	customName = "Cinderclaw",
	socialGroup = "darkside",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 100,
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

	templates = {"object/mobile/som/cinderclaw.iff"},
	scale = 3.0,
	lootGroups = {
		{
			groups = {
				{group = "g_ep3_loot_liquidsilver",  chance = 1500000},
				{group = "g_ep3_loot_deathrain", chance = 1500000},
				{group = "g_ep3_loot_dawnsorrow", chance = 1500000},
				{group = "g_carbine_underslung", chance = 1500000},
				{group = "g_carbine_rotary_underslung", chance = 1500000},
				{group = "g_massassiknuckler", chance = 1500000},
				{group = "g_lance_cryo",  chance = 1000000}
			}
		},
		 {
			groups = {
				{group = "barc_speeder_deed_group", chance = 10000000}
			},
			lootChance = 100000
		},
		{
			groups = {
				{group = "g_lance_electric_polearm", chance = 2000000},
				{group = "g_ep3_loot_hydra", chance = 2000000},
				{group = "g_rifle_naktra_crystal", chance = 2000000},
				{group = "g_som_carbine_republic_sfor", chance = 2000000},
				{group = "g_sword_mace_junti", chance = 2000000}
			},
			lootChance = 5000000
		}
	},
	weapons = {"creature_spit_large_yellow"},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=100"},
		{"creatureareaknockdown","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(cinderclaw, "cinderclaw")
