nightsister_rancor = Creature:new {
	objectName = "@mob/creature_names:nightsister_rancor",
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 55,
	chanceHit = 0.5,
	damageMin = 395,
	damageMax = 500,
	baseXp = 5373,
	baseHAM = 10000,
	baseHAMmax = 12000,
	armor = 1,
	resists = {130,160,5,200,200,200,5,5,-1},
	meatType = "meat_carnivore",
	meatAmount = 950,
	hideType = "hide_leathery",
	hideAmount = 876,
	boneType = "bone_mammal",
	boneAmount = 776,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 10,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/rancor.iff"},
	scale = 1.05,
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
		{"posturedownattack",""},
		{"creatureareaknockdown",""}
	}
}

CreatureTemplates:addCreatureTemplate(nightsister_rancor, "nightsister_rancor")
