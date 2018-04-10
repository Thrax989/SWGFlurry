nightsister_enraged_rancor = Creature:new {
	objectName = "@mob/creature_names:nightsister_enraged_rancor",
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 80,
	chanceHit = 0.75,
	damageMin = 570,
	damageMax = 850,
	baseXp = 7668,
	baseHAM = 13000,
	baseHAMmax = 16000,
	armor = 1,
	resists = {30,160,30,200,200,200,30,30,-1},
	meatType = "meat_carnivore",
	meatAmount = 950,
	hideType = "hide_leathery",
	hideAmount = 878,
	boneType = "bone_mammal",
	boneAmount = 778,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 15,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/rancor.iff"},
	scale = 1.15,
	lootGroups = {
		{
			groups = {
				{group = "power_crystals", chance = 500000},
				{group = "color_crystals", chance = 500000},
				{group = "nightsister_common", chance = 2000000},
				{group = "armor_attachments", chance = 250000},
				{group = "clothing_attachments", chance = 250000},
				{group = "melee_weapons", chance = 2500000},
				{group = "rifles", chance = 1000000},
				{group = "pistols", chance = 1000000},
				{group = "carbines", chance = 1000000},
				{group = "wearables_common", chance = 500000},
				{group = "tailor_components", chance = 500000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "junk", chance = 4000000},
				{group = "wearables_common", chance = 1000000},
				{group = "loot_kit_parts", chance = 1000000},
				{group = "tailor_components", chance = 1000000},
				{group = "nightsister1", chance = 500000},
				{group = "nightsister2", chance = 500000},
				{group = "nightsister3", chance = 500000},
				{group = "nightsister4", chance = 500000},
				{group = "nightsister5", chance = 500000},
				{group = "nightsister6", chance = 500000},
			},
			lootChance = 10000000
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack",""},
		{"creatureareaattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(nightsister_enraged_rancor, "nightsister_enraged_rancor")
