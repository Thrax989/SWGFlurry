bloodstained_prowler = Creature:new {
	objectName = "@mob/creature_names:wrix_bloodstained_prowler",
	socialGroup = "wrix",
	faction = "",
	level = 29,
	chanceHit = 0.35,
	damageMin = 210,
	damageMax = 220,
	baseXp = 3005,
	baseHAM = 8400,
	baseHAMmax = 10200,
	armor = 0,
	resists = {135,130,10,150,10,135,-1,10,-1},
	meatType = "meat_carnivore",
	meatAmount = 70,
	hideType = "hide_bristley",
	hideAmount = 40,
	boneType = "bone_mammal",
	boneAmount = 35,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/gurreck_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/gurreck_hue.iff",
	scale = 1.35,
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
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(bloodstained_prowler, "bloodstained_prowler")
