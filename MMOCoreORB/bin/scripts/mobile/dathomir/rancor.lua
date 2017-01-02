rancor = Creature:new {
	objectName = "@mob/creature_names:rancor",
	socialGroup = "rancor",
	faction = "",
	level = 50,
	chanceHit = 0.5,
	damageMin = 420,
	damageMax = 550,
	baseXp = 4916,
	baseHAM = 10000,
	baseHAMmax = 12000,
	armor = 0,
	resists = {130,130,-1,160,160,160,-1,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 950,
	hideType = "hide_leathery",
	hideAmount = 877,
	boneType = "bone_mammal",
	boneAmount = 777,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 10,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/rancor.iff"},
	controlDeviceTemplate = "object/intangible/pet/rancor_hue.iff",
	lootGroups = {
		{
			groups = {
				{group = "rancor_common", chance = 4000000},
				{group = "armor_all", chance = 2000000},
				{group = "weapons_all", chance = 2500000},
				{group = "wearables_all", chance = 1500000}
			},
			lootChance = 10000000
		},
		 {
			groups = {
				{group = "looted_container", chance = 5000000},
				{group = "loot_kit_parts", chance = 2500000},
				{group = "clothing_attachments", chance = 2500000}
			},
			lootChance = 2500000
		},
		 {
			groups = {
				{group = "tailor_components", chance = 5000000},
				{group = "junk", chance = 5000000}
			},
			lootChance = 2500000
		},
		},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack",""},
		{"intimidationattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(rancor, "rancor")
