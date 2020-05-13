norulac_raider_commando = Creature:new {
	objectName = "@mob/creature_names:norulac_raider_commando",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "norulac",
	faction = "norulac_raiders",
	level = 96,
	chanceHit = 0.95,
	damageMin = 620,
	damageMax = 950,
	baseXp = 9057,
	baseHAM = 20000,
	baseHAMmax = 25000,
	armor = 2,
	resists = {40,40,60,35,55,70,35,40,-1},
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
	creatureBitmask = KILLER + PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	
		templates = {"object/mobile/dressed_commando_trainer_human_male_01.iff"		
	},

	lootGroups = {},
	
	weapons = {"st_bombardier_weapons"},
	conversationTemplate = "",
	attacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(norulac_raider_commando, "norulac_raider_commando")
