grand_admiral_sait = Creature:new {
	--objectName = "",
	customName = "Grand Admiral Sait",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 127,
	chanceHit = 0.37,
	damageMin = 1560,
	damageMax = 1570,
	baseXp = 22822,
	baseHAM = 188100,
	baseHAMmax = 209900,
	armor = 0,
	resists = {0,0,0,-1,30,-1,30,-1,-1},
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
	optionsBitmask = 136,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_imperial_general_m.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 100000},
				{group = "junk", chance = 6200000},
				{group = "rifles", chance = 550000},
				{group = "pistols", chance = 550000},
				{group = "melee_weapons", chance = 550000},
				{group = "carbines", chance = 550000},
				{group = "clothing_attachments", chance = 25000},
				{group = "armor_attachments", chance = 25000},
				{group = "imperial_officer_common", chance = 450000},
				{group = "wearables_common", chance = 1000000}
			},
			lootChance = 2800000
		}
	},
	weapons = {"imperial_weapons_heavy"},
	reactionStf = "@npc_reaction/military",
	attacks = merge(brawlermaster)
}

CreatureTemplates:addCreatureTemplate(grand_admiral_sait, "grand_admiral_sait")
