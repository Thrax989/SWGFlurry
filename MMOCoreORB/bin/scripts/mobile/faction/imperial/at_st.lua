at_st = Creature:new {
	objectName = "@mob/creature_names:at_st",
	socialGroup = "imperial",
	faction = "imperial",
	level = 125,
	chanceHit = 10.0,
	damageMin = 800,
	damageMax = 1250,
	baseXp = 11859,
	baseHAM = 40000,
	baseHAMmax = 50000,
	armor = 1,
	resists = {35,35,20,30,30,20,15,30,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + OVERT,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = NONE,

	templates = {"object/mobile/atst.iff"},
	lootGroups = {},
	conversationTemplate = "",
	defaultAttack = "defaultdroidattack",
	defaultWeapon = "object/weapon/ranged/vehicle/vehicle_atst_ranged.iff",
}

CreatureTemplates:addCreatureTemplate(at_st, "at_st")
