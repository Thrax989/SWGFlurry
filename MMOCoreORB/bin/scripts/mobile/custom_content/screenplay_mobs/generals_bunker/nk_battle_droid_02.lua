nk_battle_droid_02 = Creature:new {
	--objectName = "@mob/creature_names:mand_bunker_battle_droid",
	customName = "NK-Battle Droid Corporal",
	socialGroup = "NK",
	pvpFaction = "NK",
	faction = "",
	level = 300,
	chanceHit = 30.0,
	damageMin = 1400,
	damageMax = 2300,
	baseXp = 16884,
	baseHAM = 58000,
	baseHAMmax = 96000,
	armor = 3,
	resists = {30,35,30,30,30,30,30,-1,-1},
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
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		--"object/mobile/death_watch_battle_droid.iff",
		"object/mobile/death_watch_battle_droid_02.iff"},
		--"object/mobile/death_watch_battle_droid_03.iff"},
	lootGroups = {
		{
			groups = {
				{group = "armor_attachments", chance = 4500000},
				{group = "death_watch_bunker_commoners", chance = 1000000},
				{group = "clothing_attachments", chance = 4500000}
			},
			lootChance = 10000000
		},
	},
	weapons = {"battle_droid_weapons"},
	conversationTemplate = "",
	attacks = merge(pistoleermaster,carbineermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(nk_battle_droid_02, "nk_battle_droid_02")
