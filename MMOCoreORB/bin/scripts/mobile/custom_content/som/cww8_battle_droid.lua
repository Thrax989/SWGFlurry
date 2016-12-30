cww8_battle_droid = Creature:new {
	customName = "World Boss",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 75,
	damageMin = 1200,
	damageMax = 8300,
	baseXp = 19000000,
	baseHAM = 15000000,
	baseHAMmax = 25000000,
	armor = 1,
	resists = {30,30,30,30,30,30,30,30,30},
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
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 2.5,

	templates = {"object/mobile/som/cww8_battle_droid.iff"},
	lootGroups = {
		{
			groups = {
				{group = "cardeed1", chance = 10000000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"rebel_weapons_heavy"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(commandomaster)
}

CreatureTemplates:addCreatureTemplate(cww8_battle_droid, "cww8_battle_droid")
