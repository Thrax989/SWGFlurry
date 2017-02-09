ep3_forlorn_wookiee_02 = Creature:new {
	customName = "Forlorn Wookiee",
	randomNameType = NAME_GENERIC_TAG,
	socialGroup = "wookiee",
	faction = "",
	level = 45,
	chanceHit = 0.45,
	damageMin = 750,
	damageMax = 900,
	baseXp = 4500,
	baseHAM = 20000,
	baseHAMmax = 30000,
	armor = 2,
	resists = {60,60,60,60,60,60,60,60,-1},
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
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/ep3/ep3_forlorn_wookiee_02.iff"},
	lootGroups = {
		{
			groups = {
	    	{group = "junk", chance = 2000000},
	    	{group = "kashyyykian_black_mtn_armor", chance = 2000000},
	    	{group = "kashyyykian_ceremonial_armor", chance = 2000000},
	    	{group = "kashyyykian_hunting_armor", chance = 2000000},
				{group = "rifle_bowcaster", chance = 2000000}
			}
		}
	},
	weapons = {"chewbacca_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(ep3_forlorn_wookiee_02, "ep3_forlorn_wookiee_02")
