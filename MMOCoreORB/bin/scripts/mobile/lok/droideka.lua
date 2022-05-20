droideka = Creature:new {
	objectName = "@mob/creature_names:droideka",
	socialGroup = "droideka",
	faction = "",
	level = 175,
	chanceHit = 15.0,
	damageMin = 900,
	damageMax = 1400,
	baseXp = 3824,
	baseHAM = 40000,
	baseHAMmax = 50000,
	armor = 1,
	resists = {30,30,30,20,30,30,30,30,10},
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

	templates = {"object/mobile/droideka.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 6500000},
				{group = "nyms_common", chance = 1000000},
				{group = "pistols", chance = 1000000},
				{group = "carbines", chance = 1000000},
				{group = "tailor_components", chance = 500000}
			}
		}
	},
	conversationTemplate = "",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "attack",
}

CreatureTemplates:addCreatureTemplate(droideka, "droideka")
