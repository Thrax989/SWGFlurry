crackdown_dark_trooper = Creature:new {
	objectName = "@mob/creature_names:crackdown_dark_trooper",
	randomNameType = NAME_DARKTROOPER,
	randomNameTag = false,
	socialGroup = "imperial",
	faction = "imperial",
	level = 35,
	chanceHit = 0.4,
	damageMin = 305,
	damageMax = 320,
	baseXp = 3465,
	baseHAM = 8600,
	baseHAMmax = 10500,
	armor = 0,
	resists = {40,20,20,50,50,50,50,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + OVERT,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.5,

	templates = {"object/mobile/dark_trooper.iff"},
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
	weapons = {"dark_trooper_weapons"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,carbineermaster,fencermaster)
}

CreatureTemplates:addCreatureTemplate(crackdown_dark_trooper, "crackdown_dark_trooper")
