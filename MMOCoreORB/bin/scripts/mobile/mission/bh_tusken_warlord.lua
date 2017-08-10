bh_tusken_warlord = Creature:new {
	objectName = "@mob/creature_names:tusken_warlord",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 62,
	chanceHit = 0.62,
	damageMin = 455,
	damageMax = 620,
	baseXp = 6013,
	baseHAM = 11000,
	baseHAMmax = 14000,
	armor = 1,
	resists = {55,35,25,80,-1,50,-1,25,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/tusken_raider.iff"},
	lootGroups = {
		{
			groups = {
				{group = "loot_kit_parts", chance = 2500000},
				{group = "junk", chance = 5000000},
				{group = "tailor_components", chance = 1000000},
				{group = "junk", chance = 500000},
				{group = "clothing_attachments", chance = 500000},
				{group = "armor_attachments", chance = 500000}
			},
			lootChance = 4220000
		},
		{
			groups = {
				{group = "loot_kit_parts", chance = 2500000},
				{group = "junk", chance = 5000000},
				{group = "tailor_components", chance = 1000000},
				{group = "junk", chance = 500000},
				{group = "clothing_attachments", chance = 500000},
				{group = "armor_attachments", chance = 500000}
			},
			lootChance = 4220000
		},
		{
			groups = {
				{group = "loot_kit_parts", chance = 2500000},
				{group = "junk", chance = 5000000},
				{group = "tailor_components", chance = 1000000},
				{group = "junk", chance = 500000},
				{group = "clothing_attachments", chance = 500000},
				{group = "armor_attachments", chance = 500000}
			},
			lootChance = 4220000
		}
	},
	weapons = {"tusken_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,marksmanmaster,fencermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(bh_tusken_warlord, "bh_tusken_warlord")
