taung_warrior = Creature:new {
	objectName = "",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "death_watch",
	pvpFaction = "death_watch",
	faction = "",
	level = 300,
	chanceHit = 40,
	damageMin = 750,
	damageMax = 1250,
	baseXp = 15000,
	baseHAM = 115000,
	baseHAMmax = 125000,
	armor = 1,
	resists = {70,70,70,70,70,70,70,70,35},
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
	creatureBitmask = KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_death_watch_red.iff"},
		lootGroups = {
		{
			groups = {
				{group = "clothing_attachments", chance = 10000000},
			},
			lootChance = 2500000
		},
		{
			groups = {
				{group = "mandalore_armor", chance = 10000000},
			},
			lootChance = 500000
		},
		{
			groups = {
				{group = "weapons_all", chance = 10000000},
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
