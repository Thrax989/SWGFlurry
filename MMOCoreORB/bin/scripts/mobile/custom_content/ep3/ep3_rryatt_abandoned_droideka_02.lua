ep3_rryatt_abandoned_droideka_02 = Creature:new {
	customName = "Abandoned Battle Droideka",
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

	templates = {"object/mobile/ep3/ep3_rryatt_abandoned_droideka_02.iff"},
	lootGroups = {
		{
			groups = {
				{group = "weapons_all", chance = 6000000},
				{group = "g_lance_staff_magna_guard", chance = 500000},
				{group = "g_lance_trando", chance = 500000},
				{group = "clothing_attachments", chance = 1500000},
				{group = "armor_attachments", chance = 1500000}
			},
			lootChance = 5000000
		}
		},
		defaultAttack = "creaturerangedattack",
		defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	}

CreatureTemplates:addCreatureTemplate(ep3_rryatt_abandoned_droideka_02, "ep3_rryatt_abandoned_droideka_02")
