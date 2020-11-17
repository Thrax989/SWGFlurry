sentry_droid = Creature:new {
	customName = "Security Droid",
	socialGroup = "",
	faction = "",
	level = 100,
	chanceHit = 30.0,
	damageMin = 500,
	damageMax = 1500,
	baseXp = 100000,
	baseHAM = 100000,
	baseHAMmax = 110000,
	armor = 3,
	resists = {90,90,90,90,90,90,90,90,90},--kinetic,energy,blast,heat,cold,electric,acid,stun,ls
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
	diet = NONE,
	scale = 1.0,
	templates = {"object/mobile/union_sentry_droid_crafted.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000},
			},
			lootChance = 10000000
		},	
		{
			groups = {
				{group = "junk", chance = 10000000},
			},
			lootChance = 10000000
		}
	},
	conversationTemplate = "",
	defaultAttack = "defaultdroidattack",
	defaultWeapon = "object/weapon/ranged/vehicle/vehicle_atst_ranged.iff",
}

CreatureTemplates:addCreatureTemplate(sentry_droid, "sentry_droid")
