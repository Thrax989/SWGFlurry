admiral_sait = Creature:new {
	customName = "Grand Admiral Sait",
	socialGroup = "imperial",
	faction = "imperial",
	level = 300,
	chanceHit = 32.25,
	damageMin = 1520,
	damageMax = 2750,
	baseXp = 26654,
	baseHAM = 321000,
	baseHAMmax = 392000,
	armor = 3,
	resists = {200,25,25,200,200,200,200,200,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE,
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/admiral_sait.iff"},
	lootGroups = {
	 	{
	        groups = {
				{group = "junk", chance = 10000000},
				
			}
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(tkamaster,fencermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(admiral_sait, "admiral_sait")
