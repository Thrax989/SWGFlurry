droid_pvp = Creature:new {
	customName = "A Force Fuelled Droid",
	socialGroup = "self",
	pvpFaction = "",
	faction = "",,
	level = 150,
	chanceHit = 50.00,
	damageMin = 1000,
	damageMax = 2000,
	baseXp = 10000,
	baseHAM = 100000,
	baseHAMmax = 125000,
	armor = 0,
	resists = {50,50,50,50,50,50,50,50,50},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
	"object/mobile/battle_droid.iff",
	"object/mobile/super_battle_droid.iff"
	},
	lootGroups = {
		{
		groups = {
				{group = "junk", chance = 9000000},
				{group = "pvp_foods_lg", chance = 1000000},

			},
			lootChance = 10000000
		}
	},
	weapons = {"nyaxs_weapons", "dark_jedi_weapons_gen4},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(marksmanmaster,riflemanmaster,carbineermaster,lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(droid_pvp, "droid_pvp")