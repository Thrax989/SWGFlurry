security2_droid = Creature:new {
	customName = "Geonosis Battle Droid",
	socialGroup = "",
	faction = "",
	level = 100,
	chanceHit = 1.0,
	damageMin = 500,
	damageMax = 1500,
	baseXp = 128549,
	baseHAM = 100000,
	baseHAMmax = 110000,
	armor = 3,
	resists = {90,90,90,90,90,90,90,90,50},--kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = NONE,
	scale = 1.0,
	templates = {"object/mobile/endor_ig88_security_battledroid_purple.iff"},
	lootGroups = {
		{
			groups = {
				{group = "", chance = 10000000},
			},
			lootChance = 10000000
		},	
		{
			groups = {
				{group = "", chance = 10000000},
			},
			lootChance = 10000000
		}
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(security2_droid, "security2_droid")

