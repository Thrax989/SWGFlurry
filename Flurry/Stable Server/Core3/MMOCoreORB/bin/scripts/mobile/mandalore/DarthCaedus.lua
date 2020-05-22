darth_caedus = Creature:new {
	objectName = "",
	customName = "\\#00ff00<<< Darth Caedus >>> \\#ff0000[lvl 300]",
	socialGroup = "sith_shadow",
	pvpFaction = "sith_shadow",
	faction = "sith_shadow",
	level = 300,
	chanceHit = 95.00,
	damageMin = 1750,
	damageMax = 3750,
  specialDamageMult = 2.5,  
	baseXp = 13273,
	baseHAM = 1000000,
	baseHAMmax = 1500000,
	armor = 3,
	resists = {160,160,160,160,160,160,160,160,145},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_fs_village_enemy_mellichae.iff"},
		lootGroups = {
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
			lootChance = 2500000
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
			lootChance = 10000000
		},
		{
			groups = {
				{group = "chemistry_component_advanced", chance = 2000000},
				{group = "weapon_component_advanced", chance = 2000000},
				{group = "fire_breathing_spider", chance = 2000000},
				{group = "geonosian_cubes", chance = 2000000},
				{group = "krayt_tissue_rare", chance = 2000000}, 
        
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
	reactionStf = "@npc_reaction/slang",
	attacks = merge(lightsabermaster,forcepowermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(darth_caedus, "darth_caedus")
