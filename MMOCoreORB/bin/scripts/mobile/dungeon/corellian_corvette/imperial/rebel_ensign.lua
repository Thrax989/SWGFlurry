rebel_ensign = Creature:new {
	objectName = "@mob/creature_names:corvette_rebel_ensign",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
	level = 72,
	chanceHit = 0.7,
	damageMin = 495,
	damageMax = 700,
	baseXp = 6931,
	baseHAM = 12000,
	baseHAMmax = 15000,
	armor = 1,
	resists = {45,35,25,25,30,30,80,65,-1},
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

	templates = {"object/mobile/dressed_rebel_major_human_male_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 100000},
				{group = "junk", chance = 4700000},
				{group = "junk", chance = 1000000},
				{group = "junk", chance = 1000000},
				{group = "junk", chance = 1000000},
				{group = "junk", chance = 1000000},
				{group = "clothing_attachments", chance = 100000},
				{group = "armor_attachments", chance = 100000},
				{group = "junk", chance = 500000},
				{group = "junk", chance = 500000}
			}
		}
	},
	weapons = {"rebel_weapons_medium"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(riflemanmaster,carbineermaster,marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(rebel_ensign, "rebel_ensign")
