shadow_collective_sc87 = Creature:new {
	objectName = "",
	customName = "\\#00ff00<<< SC-87 >>> \\#ff0000[lvl 300]",	
	socialGroup = "death_watch",
	pvpFaction = "death_watch",
	faction = "",
	level = 300,
	chanceHit = 75.00,
	damageMin = 1750,
	damageMax = 3750,
	baseXp = 19000,
	baseHAM = 1000000,
	baseHAMmax = 1250000,
	armor = 3,
	resists = {50,50,50,50,50,50,50,50,35},--kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
	optionsBitmask = 128,
	diet = NONE,

	templates = {"object/mobile/ig_88.iff"},
	scale = 1.5,
	lootGroups = {
		{
			groups = {
				{group = "g_named_crystals", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "g_named_crystals", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "g_cloak_of_hate", chance = 10000000},
			},
			lootChance = 500000
		},
		{
			groups = {
				{group = "capes", chance = 10000000},
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "g_cloak_of_hate", chance = 10000000},
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "capes", chance = 10000000},
			},
			lootChance = 1500000
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
			lootChance = 2000000
		},
		{
			groups = {
				{group = "neck_crafter", chance = 10000000},
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "non_jedi_ring_crafter_second", chance = 10000000},
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "non_jedi_ring_crafter", chance = 10000000},
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "non_jedi_rings_ranged", chance = 10000000},
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "non_jedi_rings", chance = 10000000},
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "jedi_earings", chance = 10000000},
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "jedi_bracelets", chance = 10000000},
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "jedi_neck", chance = 10000000},
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "jedi_rings", chance = 10000000},
			},
			lootChance = 2000000
		},
		{
			groups = {
				{group = "g_necklaces", chance = 10000000},
			},
			lootChance = 2000000
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
				{group = "worldbosscrate", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "vehicledeedsnormal", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "vehicledeedsrare", chance = 10000000},
			},
			lootChance = 2500000
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
	weapons = {"dark_jedi_weapons_gen3"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(shadow_collective_sc87, "shadow_collective_sc87")
