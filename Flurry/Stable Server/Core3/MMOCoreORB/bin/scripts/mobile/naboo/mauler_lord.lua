mauler_lord = Creature:new {
	customName = "\\#00ff00<<< Mauler Lord >>> \\#0000ff[lvl 300]",
	socialGroup = "mauler",
	faction = "",
	level = 300,
	chanceHit = 80.00,
	damageMin = 1800,
	damageMax = 3800,
	baseXp = 30000,
	baseHAM = 300000,
	baseHAMmax = 500000,
	armor = 2,
	resists = {150,150,150,150,150,150,150,150,150},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + AGGRESSIVE + ENEMY,
	creatureBitmask = PACK + KILLER,
	diet = HERBIVORE,
	scale = 1.5,	

	templates = {"object/mobile/dressed_mauler_lord.iff"},
	lootGroups = {
		{
			groups = {
				{group = "jedi_comp_group", chance = 10000000},
			},
			lootChance = 1000000
		},	
		{
			groups = {
				{group = "g_named_crystals", chance = 10000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "capes", chance = 10000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "nge_all", chance = 2500000},
 				{group = "weapon_all", chance = 2500000}, 
                                {group = "armor_all", chance = 5000000},
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "weapon_component_advanced", chance = 2500000},
				{group = "fire_breathing_spider", chance = 2500000},
				{group = "geonosian_cubes", chance = 2500000},
				{group = "krayt_tissue_rare", chance = 2500000}, 
        
			},
			lootChance = 5000000
		},
		{
			groups = {
				{group = "neck_crafter", chance = 10000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "non_jedi_ring_crafter_second", chance = 10000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "non_jedi_ring_crafter", chance = 10000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "non_jedi_rings_ranged", chance = 10000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "non_jedi_rings", chance = 10000000},
			},
			lootChance = 2500000
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
				{group = "nge_house_loot_deed_01", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "vehicledeedsnormal", chance = 10000000},
			},
			lootChance = 3000000
		},
		{
			groups = {
				{group = "vehicledeedsrare", chance = 10000000},
			},
			lootChance = 1500000
		},
		{
			groups = {
				{group = "tierone", chance = 4500000},
				{group = "tiertwo", chance = 2500000},
				{group = "tierthree", chance = 1500000},
				{group = "tierdiamond", chance = 1500000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "tierone", chance = 4500000},
				{group = "tiertwo", chance = 2500000},
				{group = "tierthree", chance = 1500000},
				{group = "tierdiamond", chance = 1500000},
			},
			lootChance = 10000000
		}
	},
	weapons = {"dark_jedi_weapons_gen3"},
	reactionStf = "@npc_reaction/fancy",
	attacks = merge(lightsabermaster,forcepowermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(mauler_lord, "mauler_lord")
