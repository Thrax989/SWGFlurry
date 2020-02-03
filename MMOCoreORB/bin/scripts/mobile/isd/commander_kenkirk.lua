commander_kenkirk = Creature:new {
	--objectName = "",
	customName = "Commander Kenkirk",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 123,
	chanceHit = 0.35,
	damageMin = 1220,
	damageMax = 1230,
	baseXp = 2443,
	baseHAM = 163000,
	baseHAMmax = 177000,
	armor = 0,
	resists = {15,15,15,-1,15,-1,15,-1,-1},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = 136,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_imperial_colonel_m.iff"},
	--scale = 1.2,
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
	weapons = {"imperial_weapons_medium"},
	reactionStf = "@npc_reaction/military",
	personalityStf = "@hireling/hireling_military",	
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(commander_kenkirk, "commander_kenkirk")
