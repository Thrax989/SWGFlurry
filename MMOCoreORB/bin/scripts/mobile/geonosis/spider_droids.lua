spider_droids = Creature:new {
	customName = "Spider Droids",
	socialGroup = "",
	faction = "",
	level = 300,
	chanceHit = 50.0,
	damageMin = 3500,
	damageMax = 4500,
	baseXp = 10000,
	baseHAM = 100000,
	baseHAMmax = 120000,
	armor = 1,
	resists = {170,170,170,140,170,170,170,170,150},--kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
	templates = {"object/mobile/bomarr_monk_spider_droid_greeter.iff"},
	lootGroups = {
		{
			groups = {
				{group = "weapon_component_advanced", chance = 10000000},
			},
			lootChance = 3000000
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
				{group = "geonosian_common", chance = 10000000},   
			},
			lootChance = 3000000
		},
 		{
			groups = {
				{group = "vehicledeedsnormal", chance = 8000000},
 				{group = "vehicledeedsrare", chance = 2000000},
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
			lootChance = 5000000
		}
	},
	conversationTemplate = "",
	defaultAttack = "defaultdroidattack",
	defaultWeapon = "object/weapon/ranged/vehicle/vehicle_atst_ranged.iff",
}

CreatureTemplates:addCreatureTemplate(spider_droids, "spider_droids")

