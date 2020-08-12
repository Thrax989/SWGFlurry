isd_thrawn = Creature:new {
	--objectName = "",
	customName = "\\#00ff00<<< General Thrawn >>> \\#ff0000[lvl 300]",
	socialGroup = "mercenary",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 25.00,
	damageMin = 1245,
	damageMax = 3000,
	specialDamageMult = 7.5,
	baseXp = 28549,
	baseHAM = 500000,
	baseHAMmax = 600000,
	armor = 2,
	resists = {80,80,80,80,80,80,80,80,80},
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
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = AIENABLED + INTERESTING,
	diet = HERBIVORE,
	scale = 1.0,


	templates = {"object/mobile/naboo_npc/thrawn.iff"},
/home/swgemu/backups/MMOCoreORB
		}
	},
	weapons = {"imperial_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,carbineermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(isd_thrawn, "isd_thrawn")
