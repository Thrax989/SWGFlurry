rhoa_kwi_pack_leader = Creature:new {
	objectName = "@mob/creature_names:rhoa_kwi_pack_leader",
	socialGroup = "kwi",
	faction = "",
	level = 50,
	chanceHit = 0.47,
	damageMin = 380,
	damageMax = 470,
	baseXp = 4916,
	baseHAM = 9900,
	baseHAMmax = 12100,
	armor = 0,
	resists = {135,165,0,160,0,0,0,0,-1},
	meatType = "meat_carnivore",
	meatAmount = 500,
	hideType = "hide_leathery",
	hideAmount = 500,
	boneType = "bone_mammal",
	boneAmount = 500,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 6,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/kwi_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/kwi_hue.iff",
	scale = 1.3,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack",""},
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(rhoa_kwi_pack_leader, "rhoa_kwi_pack_leader")
