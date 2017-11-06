nym_patrol_weak = Creature:new {
	objectName = "@mob/creature_names:nym_patrol_weak",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "nym",
	faction = "nym",
	level = 33,
	chanceHit = 0.4,
	damageMin = 305,
	damageMax = 320,
	baseXp = 3370,
	baseHAM = 8600,
	baseHAMmax = 10500,
	armor = 0,
	resists = {135,0,0,-1,-1,180,180,-1,-1},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	templates = {"object/mobile/dressed_nym_patrol_weak_hum_f.iff",
		"object/mobile/dressed_nym_patrol_weak_rod_m.iff",
		"object/mobile/dressed_nym_patrol_weak_nikto_m.iff",
		"object/mobile/dressed_nym_patrol_weak_hum_m.iff"},

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

CreatureTemplates:addCreatureTemplate(nym_patrol_weak, "nym_patrol_weak")
