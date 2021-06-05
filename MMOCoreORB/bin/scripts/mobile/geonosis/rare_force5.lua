rare_force5 = Creature:new {
	customName = "Dark Jedi Master \\#ff0000[Wanderer]",
	socialGroup = "",
	faction = "",
	level = 300,
	chanceHit = 75.0,
	damageMin = 4000,
	damageMax = 5000,
	specialDamageMult = 2.0,  
	baseXp = 15000,
	baseHAM = 100000,
	baseHAMmax = 120000,
	armor = 3,
	resists = {190,190,190,190,190,190,190,190,150},--kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
	optionsBitmask = AIENABLED,
	diet = NONE,
	scale = 1.1,
	templates = {"object/mobile/dressed_dark_jedi_female_zab_02.iff"},
	lootGroups = {
		{
			groups = {
				{group = "ancient_force_bread", chance = 10000000},
			},
			lootChance = 10000000
		},		
		{
			groups = {
				{group = "trash_common", chance = 5000000},
 				{group = "trash_rare", chance = 5000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "jedi_pack_group", chance = 10000000},
			},
			lootChance = 1000000
		}, 		
		{
			groups = {
				{group = "jedi_belt_group", chance = 10000000},
			},
			lootChance = 1000000
		},    
		{
			groups = {
				{group = "trash_common", chance = 7000000},
 				{group = "trash_rare", chance = 3000000},
			},
			lootChance = 10000000
		},    
		{
			groups = {
				{group = "jedi_jewelry", chance = 2000000},   
			},
			lootChance = 5000000
		},
 		{
			groups = {
				{group = "death_watch_bunker_ingredient_protective", chance = 5000000},
 				{group = "death_watch_bunker_ingredient_binary", chance = 5000000},
			},
			lootChance = 500000
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
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(rare_force5, "rare_force5")

