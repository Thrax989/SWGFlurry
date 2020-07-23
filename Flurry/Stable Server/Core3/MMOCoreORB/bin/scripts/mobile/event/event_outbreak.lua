event_outbreak = Creature:new {
	customName = "Subject One",
	socialGroup = "mercenary",
	faction = "",
	level = 300,
	chanceHit = 50.0,
	damageMin = 3000,
	damageMax = 6000,
	baseXp = 128549,
	baseHAM = 3900000,
	baseHAMmax = 4000000,
	armor = 3,
	resists = {195,195,195,195,195,195,195,195,200},
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
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.75,

	templates = {
				"object/mobile/outbreak_undead_deathtrooper_01_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_02_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_03_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_04_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_05_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_06_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_07_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_08_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_09_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_10_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_11_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_12_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_13_m.iff",
				"object/mobile/outbreak_undead_deathtrooper_14_m.iff"
				},
	lootGroups = {
		{
			groups = {
				{group = "g_named_crystals", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "g_named_crystals", chance = 3500000},
				{group = "color_crystals", chance = 4500000},
				{group = "crystal_sunriders_destiny", chance = 1000000},
				{group = "crystal_windus_guile", chance = 1000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "g_cloak_of_hate", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "capes", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "g_cloak_of_hate", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "capes", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "nge_all", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "goggles_all", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "neck_crafter", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "non_jedi_ring_crafter_second", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "non_jedi_ring_crafter", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "non_jedi_rings_ranged", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "non_jedi_rings", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "jedi_earings", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "jedi_bracelets", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "jedi_neck", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "jedi_rings", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "g_necklaces", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "armor_attachments", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "weapons_all", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "vehicledeedsnormal", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "vehicledeedsrare", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 10000000
		}
	},
  
	weapons = {"unarmed_weapons"},
	reactionStf = "@npc_reaction/slang",
	attacks = {
		{"creatureareacombo","StateAccuracyBonus=100"},
		{"creatureareaknockdown","StateAccuracyBonus=100"},
		{"knockdownattack","KnockdownChance=100"},
		{"creatureareaknockdown","KnockdownChance=100"},
		{"dizzyattack","DizzyChance=100"},
		{"stunattack","StunChance=100"},
		{"mildpoison","PoisonChance=100"},
		{"intimidationattack","IntimidationChance=100"},
		{"mediumpoison","PoisonChance=100"},
    		{"mediumdisease","DiseaseChance=100"},
		{"creatureareapoison","PoisonChance=100"},
		{"strongpoison","PoisonChance=100"},
		{"creatureareaattack","StateAccuracyBonus=100"},
    		{"creatureareadisease","DiseaseChance=100"},
    		{"creatureareableeding","BleedChance=100"}
	}
}

CreatureTemplates:addCreatureTemplate(event_outbreak, "event_outbreak")
