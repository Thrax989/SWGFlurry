shadow_collective_criminal = Creature:new {
	objectName = "",
	customName = "Shadow Collective Criminal",
	socialGroup = "death_watch",
	pvpFaction = "death_watch",
	faction = "",
	level = 150,
	chanceHit = 30,
	damageMin = 500,
	damageMax = 1000,
  specialDamageMult = 7.5,  
	baseXp = 10000,
	baseHAM = 115000,
	baseHAMmax = 125000,
	armor = 3,
	resists = {165,165,175,165,150,140,195,150,175},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_black_sun_thug.iff"},
	lootGroups = {
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
 				{group = "armor_attachments", chance = 5000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "death_watch_bunker_lootbox", chance = 2000000},
				{group = "death_watch_bunker_commoners", chance = 5000000},
				{group = "clothing_attachments", chance = 1500000},
				{group = "armor_attachments", chance = 1500000},    
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "weapons_all", chance = 5000000},
 				{group = "nge_all", chance = 5000000}, 
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
			lootChance = 3000000
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
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,pistoleermaster,carbineermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(shadow_collective_criminal, "shadow_collective_criminal")
