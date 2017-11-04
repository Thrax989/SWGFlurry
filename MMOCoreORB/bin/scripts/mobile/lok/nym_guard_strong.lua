nym_guard_strong = Creature:new {
	objectName = "@mob/creature_names:nym_guard_strong",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "nym",
	faction = "nym",
	level = 36,
	chanceHit = 0.41,
	damageMin = 315,
	damageMax = 340,
	baseXp = 3642,
	baseHAM = 9000,
	baseHAMmax = 11000,
	armor = 1,
	resists = {135,135,15,15,140,-1,-1,-1,-1},
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
	templates = {"object/mobile/dressed_nym_guard_strong_hum_f.iff",
		"object/mobile/dressed_nym_guard_strong_rod_m.iff",
		"object/mobile/dressed_nym_guard_strong_nikto_m.iff",
		"object/mobile/dressed_nym_guard_strong_hum_m.iff"},

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
	attacks = merge(marksmannovice,brawlernovice)
}

CreatureTemplates:addCreatureTemplate(nym_guard_strong, "nym_guard_strong")
