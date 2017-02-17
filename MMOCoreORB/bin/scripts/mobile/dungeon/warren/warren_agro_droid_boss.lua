warren_agro_droid_boss = Creature:new {
	objectName = "@mob/creature_names:warren_agro_droid_boss",
	socialGroup = "warren_imperial",
	faction = "",
	level = 46,
	chanceHit = 0.36,
	damageMin = 400,
	damageMax = 600,
	baseXp = 4000,
	baseHAM = 12000,
	baseHAMmax = 15000,
	armor = 0,
	resists = {30,30,40,40,-1,40,-1,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + AGGRESSIVE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/warren_agro_droid_boss.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "wearables_all", chance = 5000000},
				{group = "loot_kit_parts", chance = 2500000},
				{group = "tailor_components", chance = 2500000}
			},
			lootChance = 10000000
		},
		},
	conversationTemplate = "",
	defaultAttack = "creaturerangedattack",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff"
}

CreatureTemplates:addCreatureTemplate(warren_agro_droid_boss, "warren_agro_droid_boss")
