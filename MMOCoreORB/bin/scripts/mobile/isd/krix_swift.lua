krix_swift = Creature:new {
	--objectName = "",
	customName = "Krix SwiftShadow",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 200,
	damageMin = 670,
	damageMax = 1050,
	baseXp = 10081,
	baseHAM = 1129000,
	baseHAMmax = 1136000,
	armor = 2,
	resists = {55,55,70,45,75,80,55,75,50},
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
	creatureBitmask = KILLER,
	optionsBitmask = 136,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_imperial_colonel_m.iff"},
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
	attacks = merge(riflemanmaster,carbineermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(krix_swift, "krix_swift")
