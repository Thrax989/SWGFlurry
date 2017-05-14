tusken_king = Creature:new {
	objectName = "@mob/creature_names:tusken_king",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 300,
	chanceHit = 30.00,
	damageMin = 2000,
	damageMax = 3000,
	baseXp = 0,
	baseHAM = 400000,
	baseHAMmax = 400000,
	armor = 3,
	resists = {90,90,90,90,90,90,90,90,-1},
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
	optionsBitmask = AIENABLED + INTERESTING,
	diet = HERBIVORE,

	templates = {"object/mobile/tusken_raider.iff"},
	lootGroups = {
		{
	        	groups = {
				{group = "krayt_dragon_common", chance = 5000000},
				{group = "krayt_tissue_uncommon", chance = 5000000}
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
				{group = "armor_all", chance = 5000000},
				{group = "weapons_all", chance = 5000000}
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
				{group = "pearls_flawless", chance = 10000000}
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
		},
		{
             		groups = {
                     		{group = "saberhand27", chance = 10000000}
		},
                     	lootChance = 10000000
		},
		{
             		groups = {
                     		{group = "saberhand27", chance = 10000000}
		},
                     	lootChance = 10000000
		},
		{
          		groups = {
                   		{group = "backpacks_b01", chance = 5000000},
                   		{group = "backpacks_b02", chance = 5000000}
		},
          		lootChance = 10000000
		},
		{
          		groups = {
                   		{group = "stun_weapons", chance = 5000000},
                   		{group = "stun_ranged", chance = 5000000}
		},
          		lootChance = 5000000
		},
		},
	weapons = {"tusken_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,fencermaster)
}

CreatureTemplates:addCreatureTemplate(tusken_king, "tusken_king")
