isd_mouse_droid = Creature:new {
	objectName = "@mob/creature_names:mouse_droid",
	socialGroup = "mercenary",
	faction = "",
	level = 300,
	chanceHit = 20,
	damageMin = 200,
	damageMax = 1000,
	baseXp = 10081,
	baseHAM = 1029000,
	baseHAMmax = 1036000,
	armor = 0,
	resists = {55,55,70,45,75,80,55,75,50},
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
	creatureBitmask = KILLER,
	diet = HERBIVORE,

	templates = {"object/mobile/mouse_droid.iff"},
	lootGroups = {
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
			lootChance = 2000000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 2000000
		}
	},
	weapons = {"creature_spit_heavy_flame"},
	reactionStf = "@npc_reaction/slang",
	attacks = {
		{"creatureareacombo","StateAccuracyBonus=50"},
		{"creatureareaknockdown","StateAccuracyBonus=50"},
		{"knockdownattack","KnockdownChance=50"},
		{"creatureareaknockdown","KnockdownChance=50"},
		{"dizzyattack","DizzyChance=50"},
		{"stunattack","StunChance=50"},
		{"mildpoison","PoisonChance=50"},
		{"intimidationattack","IntimidationChance=50"},
		{"mediumpoison","PoisonChance=50"},
		{"creatureareapoison","PoisonChance=50"},
		{"strongpoison","PoisonChance=50"},
		{"creatureareaattack","StateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(isd_mouse_droid, "isd_mouse_droid")
