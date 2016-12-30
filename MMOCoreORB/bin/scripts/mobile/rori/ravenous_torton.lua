ravenous_torton = Creature:new {
	objectName = "@mob/creature_names:ravenous_torton",
	socialGroup = "torton",
	faction = "",
	level = 34,
	chanceHit = 1.4,
	damageMin = 425,
	damageMax = 460,
	baseXp = 5370,
	baseHAM = 9600,
	baseHAMmax = 11500,
	armor = 0,
	resists = {150,150,150,150,150,175,175,175,150},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_wooly",
	hideAmount = 1000,
	boneType = "bone_mammal",
	boneAmount = 1000,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 9,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/torton_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/torton_hue.iff",
	scale = 1.1,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack",""},
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(ravenous_torton, "ravenous_torton")
