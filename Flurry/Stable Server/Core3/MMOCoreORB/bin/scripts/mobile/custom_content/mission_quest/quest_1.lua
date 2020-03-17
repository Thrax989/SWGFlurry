quest_1 = Creature:new {
	customName = "Tusken Executioner",
	socialGroup = "tusken_raider",
	faction = "tusken_raider",
	level = 300,
	chanceHit = 23.5,
	damageMin = 1645,
	damageMax = 3000,
	baseXp = 25167,
	baseHAM = 261000,
	baseHAMmax = 320000,
	armor = 3,
	resists = {85,80,35,100,20,30,45,80,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED + INTERESTING,
	diet = HERBIVORE,

	templates = {"object/mobile/tusken_raider.iff"},
--Player Quest Loot % Chance Legend
--chance = 10000000 = 100% chance to loot
--chance = 7500000  =  75% chance to loot
--chance = 5000000  =  50% chance to loot
--chance = 2500000  =  25% chance to loot
--chance = 1000000  =  10% chance to loot
--chance = 500000   =   5% chance to loot
--chance = 100000   =   1% chance to loot
--% Is The Chance to land on that loot group
--lootChance = The Value that determines the roll on that table
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 2500000},--25%
				{group = "tailor_components", chance = 500000},--5%
				{group = "loot_kit_parts", chance = 500000},--5%
				{group = "color_crystals", chance = 500000},--5%
				{group = "power_crystals", chance = 500000},--5%
				{group = "power_crystals", chance = 500000},--5%
				{group = "wearables_all", chance = 1000000},--10%
				{group = "weapons_all", chance = 1000000},--10%
				{group = "armor_all", chance = 1000000},--10%
				{group = "clothing_attachments", chance = 1000000},--10%
				{group = "armor_attachments", chance = 1000000}--10%
			},
			lootChance = 10000000--100%
		},
		{
			groups = {
				{group = "junk", chance = 2500000},--25%
				{group = "tailor_components", chance = 500000},--5%
				{group = "loot_kit_parts", chance = 500000},--5%
				{group = "color_crystals", chance = 500000},--5%
				{group = "power_crystals", chance = 500000},--5%
				{group = "power_crystals", chance = 500000},--5%
				{group = "wearables_all", chance = 1000000},--10%
				{group = "weapons_all", chance = 1000000},--10%
				{group = "armor_all", chance = 1000000},--10%
				{group = "clothing_attachments", chance = 1000000},--10%
				{group = "armor_attachments", chance = 1000000}--10%
			},
			lootChance = 10000000--100%
		},
		{
			groups = {
				{group = "junk", chance = 2500000},--25%
				{group = "tailor_components", chance = 500000},--5%
				{group = "loot_kit_parts", chance = 500000},--5%
				{group = "color_crystals", chance = 500000},--5%
				{group = "power_crystals", chance = 500000},--5%
				{group = "power_crystals", chance = 500000},--5%
				{group = "wearables_all", chance = 1000000},--10%
				{group = "weapons_all", chance = 1000000},--10%
				{group = "armor_all", chance = 1000000},--10%
				{group = "clothing_attachments", chance = 1000000},--10%
				{group = "armor_attachments", chance = 1000000}--10%
			},
			lootChance = 10000000--100%
		},
	},
	weapons = {"tusken_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,brawlermaster,fencermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(quest_1, "quest_1")
