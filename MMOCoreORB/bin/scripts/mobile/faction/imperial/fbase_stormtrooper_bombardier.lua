fbase_stormtrooper_bombardier = Creature:new {
	objectName = "@mob/creature_names:fbase_stormtrooper_bombardier",
	randomNameType = NAME_STORMTROOPER,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 37,
	chanceHit = 0.43,
	damageMin = 330,
	damageMax = 370,
	baseXp = 3700,
	baseHAM = 9100,
	baseHAMmax = 11100,
	armor = 0,
	resists = {110,110,140,15,15,15,15,-1,-1},
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
	scale = 1.05,

	templates = {"object/mobile/dressed_stormtrooper_bombardier_m.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 200000},
				{group = "junk", chance = 8300000},
				{group = "clothing_attachments", chance = 500000},
				{group = "armor_attachments", chance = 500000},
				{group = "junk", chance = 500000}
			}
		}
	},
	weapons = {"st_bombardier_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/stormtrooper",
	attacks = merge(commandonovice,marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(fbase_stormtrooper_bombardier, "fbase_stormtrooper_bombardier")
