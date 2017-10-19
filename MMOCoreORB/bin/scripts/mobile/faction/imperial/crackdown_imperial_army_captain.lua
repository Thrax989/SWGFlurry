crackdown_imperial_army_captain = Creature:new {
	objectName = "@mob/creature_names:crackdown_imperial_army_captain",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 1,
	chanceHit = 0.34,
	damageMin = 200,
	damageMax = 210,
	baseXp = 45,
	baseHAM = 5400,
	baseHAMmax = 6600,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
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

	templates = {"object/mobile/dressed_stormtrooper_captain_white_white.iff",
		"object/mobile/dressed_imperial_captain_m.iff"
	},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 9000000},
				{group = "clothing_attachments", chance = 500000},
				{group = "armor_attachments", chance = 500000},
					
			},
		},
			{
			groups = {
				{group = "g_rebel_credit", chance = 10000000},
				},
			lootChance = 20000 
			},
		},
			{
			groups = {
				{group = "rebpoints", chance = 10000000},
				},
			lootChance = 100000
			},
		},
	weapons = {"imperial_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(crackdown_imperial_army_captain, "crackdown_imperial_army_captain")