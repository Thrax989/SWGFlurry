ep3_rryatt_abandoned_battle_droid_01 = Creature:new {
	customName = "Abandoned Battle Droid",
	--randomNameType = NAME_GENERIC_TAG,
	socialGroup = "droids",
	faction = "",
	level = 134,
	chanceHit = 5.5,
	damageMin = 795,
	damageMax = 1300,
	baseXp = 12612,
	baseHAM = 56000,
	baseHAMmax = 68000,
	armor = 2,
	resists = {75,75,100,60,100,25,40,85,-1},
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
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/ep3/ep3_rryatt_abandoned_battle_droid_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "g_carbine_e5", chance = 1000000},
				{group = "rifles", chance = 2000000},
				{group = "pistols", chance = 2000000},
				{group = "clothing_attachments", chance = 2500000},
				{group = "armor_attachments", chance = 2500000}
			},
			lootChance = 6500000
		}
	},
	weapons = {"battle_droid_weapons"},
	conversationTemplate = "",
	attacks = merge(pistoleermaster,carbineermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(ep3_rryatt_abandoned_battle_droid_01, "ep3_rryatt_abandoned_battle_droid_01")
