nym_surveyor = Creature:new {
	objectName = "@mob/creature_names:nym_surveyer",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "nym",
	faction = "nym",
	level = 21,
	chanceHit = 0.33,
	damageMin = 190,
	damageMax = 200,
	baseXp = 2006,
	baseHAM = 5000,
	baseHAMmax = 6100,
	armor = 0,
	resists = {25,10,25,25,25,-1,-1,-1,-1},
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
	templates = {"object/mobile/dressed_nym_surveyer_rod_m.iff",
		"object/mobile/dressed_nym_surveyer_hum_m.iff",
		"object/mobile/dressed_nym_surveyer_hum_f.iff",
		"object/mobile/dressed_nym_surveyer_rod_f.iff"},

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
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(nym_surveyor, "nym_surveyor")
