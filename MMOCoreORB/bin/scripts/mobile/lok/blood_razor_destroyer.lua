blood_razor_destroyer = Creature:new {
	objectName = "@mob/creature_names:blood_razor_destroyer",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "bloodrazor",
	faction = "bloodrazor",
	level = 38,
	chanceHit = 0.42,
	damageMin = 385,
	damageMax = 480,
	baseXp = 3824,
	baseHAM = 8100,
	baseHAMmax = 9900,
	armor = 0,
	resists = {0,60,0,0,-1,0,0,-1,-1},
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
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_blood_razor_pirate_destroyer_hum_f.iff",
		"object/mobile/dressed_blood_razor_pirate_destroyer_hum_m.iff",
		"object/mobile/dressed_blood_razor_pirate_destroyer_nikto_m.iff",
		"object/mobile/dressed_blood_razor_pirate_destroyer_tran_m.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 7000000},
				{group = "tailor_components", chance = 1000000},
				{group = "color_crystals", chance = 500000},
				{group = "clothing_attachments", chance = 500000},
				{group = "armor_attachments", chance = 500000},
				{group = "bloodrazor_common", chance = 500000}
			}
		}
	},
	weapons = {"blood_razer_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(pistoleermaster,pikemanmaster,tkamaster,brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(blood_razor_destroyer, "blood_razor_destroyer")
