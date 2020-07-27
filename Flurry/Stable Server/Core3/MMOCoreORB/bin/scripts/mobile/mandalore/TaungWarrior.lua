taung_warrior = Creature:new {
	objectName = "",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "death_watch",
	pvpFaction = "death_watch",
	faction = "",
	level = 300,
	chanceHit = 40,
	damageMin = 3750,
	damageMax = 4250,
  specialDamageMult = 7.5,  
	baseXp = 15000,
	baseHAM = 115000,
	baseHAMmax = 125000,
	armor = 2,
	resists = {170,170,170,170,170,170,170,170,145},
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

	templates = {"object/mobile/dressed_death_watch_red.iff"},
		lootGroups = {
		{
			groups = {
				{group = "death_watch_bunker_lieutenants", chance = 10000000},
			},
			lootChance = 3000000
		},		
		{
			groups = {
				{group = "death_watch_bunker_lootbox", chance = 2000000},
				{group = "death_watch_bunker_commoners", chance = 5000000},
				{group = "clothing_attachments", chance = 1500000},
				{group = "armor_attachments", chance = 1500000},      
                        },
			lootChance = 2500000
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
				{group = "jedi_comp_group", chance = 10000000},
			},
			lootChance = 200000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 3500000
		},
		{
			groups = {
				{group = "tierone", chance = 1500000},
				{group = "tiertwo", chance = 3500000},
				{group = "tierthree", chance = 2500000},
				{group = "tierdiamond", chance = 2500000},
			},
			lootChance = 3450000
		}
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,marksmanmaster,fencermaster,commandomaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(taung_warrior, "taung_warrior")
