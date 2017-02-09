ep3_clone_relics_cww8 = Creature:new {
	customName = "CWW-8",
	--randomNameType = NAME_GENERIC_TAG,
	socialGroup = "",
	faction = "",
	level = 80,
	chanceHit = 0.8,
	damageMin = 800,
	damageMax = 1600,
	baseXp = 8000,
	baseHAM = 130000,
	baseHAMmax = 130000,
	armor = 2,
	resists = {60,60,60,60,60,60,60,60,-1},
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

	templates = {"object/mobile/ep3/ep3_clone_relics_cww8.iff"},
	lootGroups = {
		{
			groups = {
				{group = "coa_encoded_disk_fragments", chance = 3600000},
				{group = "coa2_decoder_components", chance = 3600000},
				{group = "coa2_rebel_message", chance = 2800000}
			}
		}
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(ep3_clone_relics_cww8, "ep3_clone_relics_cww8")
