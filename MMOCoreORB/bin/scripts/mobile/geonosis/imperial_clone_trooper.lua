imperial_clone_trooper = Creature:new {
	customName = "Clone Trooper \\#ff0000[Imperial]",
	socialGroup = "imperial",
	faction = "imperial",
	level = 300,
	chanceHit = 50.0,
	damageMin = 2700,
	damageMax = 4000,
	baseXp = 10000,
	baseHAM = 90000,
	baseHAMmax = 120000,
	armor = 1,
	resists = {170,170,170,170,170,170,170,130,150},--kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
	scale = 1.0,
	templates = {"object/mobile/halloween_skeleton_1.iff"},
	outfit = "clone_trooper_imperial_outfit",
	lootGroups = {
		{
			groups = {
				{group = "death_watch_bunker_lieutenants", chance = 10000000},
			},
			lootChance = 3000000
		},		
		{
			groups = {
				{group = "trash_common", chance = 8000000},
 				{group = "trash_rare", chance = 2000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "geonosian_common", chance = 10000000},   
			},
			lootChance = 2000000
		},
 		{
			groups = {
				{group = "rebpoints", chance = 10000000},   
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
			lootChance = 3500000
		}
	},
	weapons = {"geonosian_mercenary_weapons"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,pistoleermaster,fencermaster)
}

CreatureTemplates:addCreatureTemplate(imperial_clone_trooper, "imperial_clone_trooper")

