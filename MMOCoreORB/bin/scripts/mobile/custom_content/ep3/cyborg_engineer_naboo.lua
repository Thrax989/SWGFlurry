cyborg_engineer_naboo = Creature:new {
	customName = "Cyborg Engineer",
	randomNameType = NAME_GENERIC_TAG,
	socialGroup = "",
	faction = "",
	level = 30,
	chanceHit = 0.33,
	damageMin = 180,
	damageMax = 190,
	baseXp = 1609,
	baseHAM = 4500,
	baseHAMmax = 5500,
	armor = 0,
	resists = {10,10,10,10,10,10,10,-1,-1},
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

	templates = {"object/mobile/ep3/cyborg_engineer_naboo.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 7000000},
				{group = "skill_buffs", chance = 1000000},
				{group = "loot_kit_parts", chance = 1000000},
				{group = "wearables", chance = 1000000}
			}
		}
	},
	weapons = {"pirate_weapons_light"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(cyborg_engineer_naboo, "cyborg_engineer_naboo")
