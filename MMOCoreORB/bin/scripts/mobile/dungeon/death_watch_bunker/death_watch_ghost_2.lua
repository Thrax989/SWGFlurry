
death_watch_ghost_2 = Creature:new {
	-- objectName = "@mob/creature_names:",
	customName = "death watch ghost 2",
	randomNameTag = true,
	socialGroup = "death_watch",
	faction = "",
	level = 300,
	chanceHit = 71.5,
	damageMin = 3500,
	damageMax = 3600,
	baseXp = 14314,
	baseHAM = 400000,
	baseHAMmax = 410000,
	armor = 0,
	resists = {100,100,100,100,100,100,100,100,50},
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
	scale = 1.15,

	templates = {"object/mobile/dressed_death_watch_grey.iff"},
	lootGroups = {
		{
			groups = {
				{group = "death_watch_bunker_lieutenants", chance = 5000000},
				{group = "rifles", chance = 1000000},
				{group = "pistols", chance = 1000000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "armor_attachments", chance = 1000000},
				{group = "death_watch_bunker_ingredient_binary", chance = 500000},
				{group = "death_watch_bunker_ingredient_protective", chance = 500000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster,pikemanmaster,fencermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(death_watch_ghost_2, "death_watch_ghost_2")