nym_pirate_elite = Creature:new {
	objectName = "@mob/creature_names:nym_pirate_elite",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "nym",
	faction = "nym",
	level = 31,
	chanceHit = 0.39,
	damageMin = 290,
	damageMax = 300,
	baseXp = 3188,
	baseHAM = 8600,
	baseHAMmax = 10600,
	armor = 1,
	resists = {15,140,15,15,140,-1,-1,-1,-1},
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

	templates = {"object/mobile/dressed_nym_pirate_elite_rod_m.iff",
		"object/mobile/dressed_nym_pirate_elite_nikto_m.iff",
		"object/mobile/dressed_nym_pirate_elite_hum_m.iff",
		"object/mobile/dressed_nym_pirate_elite_wee_m.iff"},
	lootGroups = {
		{
			groups = {
				{group = "nyms_common", chance = 1000000},
				{group = "junk", chance = 6500000},
				{group = "tailor_components", chance = 1000000},
				{group = "color_crystals", chance = 500000},
				{group = "clothing_attachments", chance = 500000},
				{group = "armor_attachments", chance = 500000}
			}
		}
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(nym_pirate_elite, "nym_pirate_elite")
