tps_teleport_droid = Creature:new {
	customName = "Gamma Shuttle Droid",
	randomNameTag = false,
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 300,
	chanceHit = 0.24,
	damageMin = 40,
	damageMax = 45,
	baseXp = 62,
	baseHAM = 113,
	baseHAMmax = 118,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED + CONVERSABLE,
	diet = HERBIVORE,

	templates = {"object/mobile/3po_protocol_droid_red.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "tpsTeleportConvoTemplate",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(tps_teleport_droid, "tps_teleport_droid")
