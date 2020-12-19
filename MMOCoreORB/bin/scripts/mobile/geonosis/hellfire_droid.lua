hellfire_droid = Creature:new {
	customName = "Geonosis Battle Droid",
	socialGroup = "",
	faction = "",
	level = 300,
	chanceHit = 75.0,
	damageMin = 4000,
	damageMax = 5000,
	baseXp = 10000,
	baseHAM = 100000,
	baseHAMmax = 120000,
	armor = 2,
	resists = {125,160,160,160,160,160,160,160,140},--kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
	scale = 1.2,
	templates = {"object/mobile/hailfire_droid.iff"},
	lootGroups = {
		{
			groups = {
				{group = "chemistry_component_advanced", chance = 10000000},
			},
			lootChance = 5000000
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
				{group = "trash_common", chance = 7000000},
 				{group = "trash_rare", chance = 3000000},
			},
			lootChance = 10000000
		},    
		{
			groups = {
				{group = "weapon_component_advanced", chance = 2000000},   
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
			lootChance = 8000000
		}
	},
	defaultAttack = "defaultdroidattack",
	defaultWeapon = "object/weapon/ranged/vehicle/vehicle_atst_ranged.iff",
}

CreatureTemplates:addCreatureTemplate(hellfire_droid, "hellfire_droid")

