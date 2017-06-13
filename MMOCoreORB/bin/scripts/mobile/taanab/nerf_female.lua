nerf_female = Creature:new {
	objectName = "@mob/creature_names:nerf_female",
	socialGroup = "nerf",
	faction = "",
	level = 26,
	chanceHit = 0.35,
	damageMin = 240,
	damageMax = 260,
	baseXp = 2914,
	baseHAM = 8000,
	baseHAMmax = 9600,
	armor = 0,
	resists = {135,20,-1,20,20,-1,20,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 500,
	hideType = "hide_leathery",
	hideAmount = 500,
	boneType = "bone_mammal",
	boneAmount = 500,
	milk = 0,
	tamingChance = 0.15,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/nerf.iff"},
	controlDeviceTemplate = "",
	scale = 0.8,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(nerf_female, "nerf_female")
