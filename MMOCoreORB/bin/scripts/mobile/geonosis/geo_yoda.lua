geo_yoda = Creature:new {
	customName = "Yoda",
	socialGroup = "",
	faction = "",
	level = 291,
	chanceHit = 27.25,
	damageMin = 1800,
	damageMax = 3310,
	baseXp = 27849,
	baseHAM = 321000,
	baseHAMmax = 392000,
	armor = 3,
	resists = {90,90,90,90,90,90,90,90,-1},
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
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.0,
	templates = {"object/mobile/yoda.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000},
			},
			lootChance = 10000000
		},	
		{
			groups = {
				{group = "junk", chance = 10000000},
			},
			lootChance = 10000000
		}
	},
	weapons = {""},
	conversationTemplate = "",
	attacks = merge(forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(geo_yoda, "geo_yoda")

