nym_pirate_weak = Creature:new {
	objectName = "@mob/creature_names:nym_pirate_weak",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "nym",
	faction = "nym",
	level = 23,
	chanceHit = 0.35,
	damageMin = 210,
	damageMax = 220,
	baseXp = 2243,
	baseHAM = 5900,
	baseHAMmax = 7200,
	armor = 0,
	resists = {0,120,0,0,0,0,0,-1,-1},
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
	templates = {"object/mobile/dressed_nym_pirate_weak_hum_f.iff",
		"object/mobile/dressed_nym_pirate_weak_rod_m.iff",
		"object/mobile/dressed_nym_pirate_weak_nikto_m.iff",
		"object/mobile/dressed_nym_pirate_weak_hum_m.iff",
		"object/mobile/dressed_nym_pirate_weak_rod_f.iff"},

--NPC with AA/CA Template Nyms Generic
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000},
		},
			lootChance = 500000 

		},
		{
			groups = {
				{group = "artifact", chance = 10000000}			
		},
			lootChance = 1000000
		},
		{
			groups = {
				{group = "tierone", chance = 10000000}
		},
			lootChance = 750000
		},
		{
			groups = {
				{group = "tiertwo", chance = 10000000}
		},
			lootChance = 100000
		},
		{
			groups = {
				{group = "tierthree", chance = 10000000}
		},
			lootChance = 50000
		},
		{
			groups = {
				{group = "nyms_common", chance = 10000000}
		},
			lootChance = 3000000
		},
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(bountyhuntermaster,marksmanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(nym_pirate_weak, "nym_pirate_weak")
