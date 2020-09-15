gr_death_watch_bloodguard = Creature:new {
	objectName = "@mob/creature_names:mand_bunker_dthwatch_red",
	socialGroup = "death_watch",
	faction = "",
	level = 121,
	chanceHit = 4,
	damageMin = 745,
	damageMax = 1200,
	baseXp = 11390,
	baseHAM = 50000,
	baseHAMmax = 50000,
	armor = 2,
	resists = {40,55,70,60,30,30,50,40,55},
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
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_death_watch_red.iff"},
	lootGroups = {
		{
			groups = {
				{group = "death_watch_bunker_commoners", chance = 500000},
				{group = "death_watch_bunker_lieutenants", chance = 3750000},
				{group = "mandalorian_schemes", chance = 3750000},
				{group = "crystals_premium", chance = 2000000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(gr_death_watch_bloodguard, "gr_death_watch_bloodguard")
