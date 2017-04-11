tusken_king_quest = Creature:new {
	objectName = "@mob/creature_names:tusken_king_quest",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 300,
	chanceHit = 50.00,
	damageMin = 2000,
	damageMax = 3000,
	specialDamageMult = 2.0,
	baseXp = 9057,
	baseHAM = 22000,
	baseHAMmax = 27000,
	armor = 3,
	resists = {95,95,95,95,95,95,95,95,90},
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
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/tusken_raider.iff"},
	lootGroups = {
		{
	        	groups = {
				{group = "krayt_dragon_common", chance = 6000000},
				{group = "krayt_tissue_uncommon", chance = 3000000},
				{group = "armor_all", chance = 500000},
				{group = "weapons_all", chance = 500000}
		},
			lootChance = 10000000
		},
		{
	        	groups = {
				{group = "armor_attachments", chance = 5000000},
				{group = "clothing_attachments", chance = 5000000}
		},
			lootChance = 10000000
		},
		{
	        	groups = {
				{group = "armor_attachments", chance = 5000000},
				{group = "clothing_attachments", chance = 5000000}
		},
			lootChance = 10000000
		},
		{
	        	groups = {
				{group = "junk", chance = 10000000}
		},
			lootChance = 10000000
		},
		{
	        	groups = {
				{group = "krayt_tissue_rare", chance = 10000000}
		},
			lootChance = 10000000
		},
		{
	        	groups = {
				{group = "pearls_premium", chance = 4000000},
				{group = "pearls_flawless", chance = 6000000}
		},
			lootChance = 10000000
		},
		{
	        	groups = {
				{group = "nge2", chance = 10000000}
		},
			lootChance = 5000000
		},
		{
	        	groups = {
				{group = "apocalypse", chance = 10000000}
		},
			lootChance = 10000000
		},
		{
	        	groups = {
				{group = "skill_buffs", chance = 10000000}
		},
			lootChance = 10000000
		}
		},
	weapons = {"tusken_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,brawlermaster,fencermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(tusken_king_quest, "tusken_king_quest")
