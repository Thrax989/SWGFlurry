nym_bodyguard = Creature:new {
	objectName = "@mob/creature_names:nym_bodyguard",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "nym",
	faction = "nym",
	level = 28,
	chanceHit = 0.37,
	damageMin = 260,
	damageMax = 270,
	baseXp = 2914,
	baseHAM = 8100,
	baseHAMmax = 9900,
	armor = 1,
	resists = {15,15,15,15,40,15,-1,-1,-1},
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

	templates = {"object/mobile/dressed_nym_bodyguard_rod_m.iff",
		"object/mobile/dressed_nym_bodyguard_hum_m.iff",
		"object/mobile/dressed_nym_bodyguard_hum_f.iff"},
	
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
	weapons = {"rebel_weapons_medium"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(riflemanmaster,carbineermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(nym_bodyguard, "nym_bodyguard")
