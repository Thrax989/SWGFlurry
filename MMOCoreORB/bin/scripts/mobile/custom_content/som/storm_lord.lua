storm_lord = Creature:new {
	customName = "Storm Lord",
	socialGroup = "",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 27.25,
	damageMin = 1250,
	damageMax = 2500,
	baseXp = 20476,
	baseHAM = 278000,
	baseHAMmax = 292000,
	armor = 3,
	resists = {75,25,25,75,75,75,75,75,-1},
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

	templates = {"object/mobile/som/storm_lord.iff"},
	lootGroups = {
		{
			groups = {
				{group = "crystals_premium", chance = 900000},
				{group = "nightsister_common", chance = 2600000},
				{group = "pistols", chance = 1000000},
				{group = "rifles", chance = 1000000},
				{group = "carbines", chance = 1000000},
				{group = "melee_weapons", chance = 2000000},
				{group = "holocron_dark", chance = 100000},
				{group = "holocron_light", chance = 100000},
				{group = "armor_attachments", chance = 400000},
				{group = "clothing_attachments", chance = 400000},
				{group = "wearables_rare", chance = 500000}
			}
		},
		{
			groups = {
				{group = "holocron_dark", chance = 5000000},
				{group = "holocron_light", chance = 5000000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"dark_jedi_weapons_gen4"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(storm_lord, "storm_lord")
