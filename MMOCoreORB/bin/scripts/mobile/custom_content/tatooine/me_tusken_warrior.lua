me_tusken_warrior = Creature:new {
	customName = "a Tusken Raider Soldier",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 7,
	chanceHit = 0.46,
	damageMin = 85,
	damageMax = 125,
	baseXp = 200,
	baseHAM = 370,
	baseHAMmax = 430,
	armor = 0,
	resists = {10,10,10,10,10,10,10,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/tusken_raider.iff"},
	lootGroups = {
		{
			groups = {
				{group = "tusken_common", chance = 4500000},
				{group = "wearables_common", chance = 2000000},
				{group = "bone_armor", chance = 750000},
				{group = "chitin_armor", chance = 750000},
				{group = "armor_attachments", chance = 500000},
				{group = "clothing_attachments", chance = 500000},
				{group = "color_crystals", chance = 500000},
				{group = "power_crystals", chance = 500000}
			}
		}
	},
	weapons = {"tusken_weapons"},
	conversationTemplate = "",
	reactionStf = "",
	attacks = merge(marksmannovice,brawlernovice)
}

CreatureTemplates:addCreatureTemplate(me_tusken_warrior, "me_tusken_warrior")
