sbd5_droids = Creature:new {
	customName = "Super Battle Droid",
	socialGroup = "",
	faction = "",
	level = 300,
	chanceHit = 50.0,
	damageMin = 3000,
	damageMax = 4200,
	baseXp = 10000,
	baseHAM = 100000,
	baseHAMmax = 120000,
	armor = 1,
	resists = {170,170,170,170,170,140,170,170,150},--kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
	templates = {"object/mobile/npe/npe_droid_super.iff"},
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
				{group = "geonosian_common", chance = 2000000},   
			},
			lootChance = 10000000
		},
-- PLC's and BL's are loots are reserved for mandolorain npcs only, either place SBD on Mandalore, or change the loot to something other than. 
-- 		{
--			groups = {
--				{group = "death_watch_bunker_ingredient_protective", chance = 5000000},
-- 				{group = "death_watch_bunker_ingredient_binary", chance = 5000000},
--			},
--			lootChance = 500000
--		},       
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 4000000
		}
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(sbd5_droids, "sbd5_droids")

