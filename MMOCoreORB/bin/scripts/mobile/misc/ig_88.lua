ig_88 = Creature:new {
	objectName = "@mob/creature_names:ig_88",
	socialGroup = "mercenary",
	faction = "",
	level = 300,
	chanceHit = 50.00,
	damageMin = 1800,
	damageMax = 3310,
	baseXp = 27849,
	baseHAM = 521000,
	baseHAMmax = 692000,
	armor = 3,
	resists = {60,60,60,60,60,60,60,60,60},
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
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 3.0,

	templates = {"object/mobile/ig_88.iff"},
	lootGroups = {
		{
			groups = {
				{group = "saberhand4", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "av_21_pp", chance = 1000000}
			},
			lootChance = 500000
		 },
		 {
			groups = {
				{group = "barc_speeder_deed_group", chance = 10000000}
			},
			lootChance = 100000
		},
		{
			groups = {
				{group = "nge3", chance = 5000000},
				{group = "armor_attachments", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 10000000
		},
		 {
			groups = {
				{group = "saberhand5", chance = 5000000},
				{group = "saberhand6", chance = 5000000}
			},
			lootChance = 10000000
		},
		},
	weapons = {"st_sniper_weapons"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(riflemanmaster,bountyhuntermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(ig_88, "ig_88")