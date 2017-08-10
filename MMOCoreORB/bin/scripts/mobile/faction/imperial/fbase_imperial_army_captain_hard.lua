fbase_imperial_army_captain_hard = Creature:new {
	objectName = "@mob/creature_names:fbase_imperial_army_captain_hard",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 62,
	chanceHit = 0.62,
	damageMin = 455,
	damageMax = 620,
	baseXp = 6200,
	baseHAM = 12000,
	baseHAMmax = 16500,
	armor = 1,
	resists = {10,10,10,10,10,10,10,-1,-1},
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
	optionsBitmask = AIENABLED + CONVERSABLE,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_imperial_captain_m.iff"},
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
	weapons = {"imperial_weapons_heavy"},
	conversationTemplate = "imperialRecruiterConvoTemplate",
	reactionStf = "@npc_reaction/military",
	attacks = merge(brawlermaster,marksmanmaster,carbineermid,riflemanmid)
}

CreatureTemplates:addCreatureTemplate(fbase_imperial_army_captain_hard, "fbase_imperial_army_captain_hard")
