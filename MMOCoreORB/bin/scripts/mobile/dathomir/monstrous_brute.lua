monstrous_brute = Creature:new {
	objectName = "@mob/creature_names:rancor_monstrous_brute",
	socialGroup = "rancor",
	faction = "",
	level = 85,
	chanceHit = 8.5,
	damageMin = 945,
	damageMax = 1600,
	baseXp = 13367,
	baseHAM = 105000,
	baseHAMmax = 115000,
	armor = 0,
	resists = {180,185,180,175,180,165,165,180,155},
	meatType = "meat_carnivore",
	meatAmount = 950,
	hideType = "hide_leathery",
	hideAmount = 878,
	boneType = "bone_mammal",
	boneAmount = 778,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 12,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/rancor_hue.iff"},
	scale = 1.35,
	lootGroups = {
		{
			groups = {
				{group = "rancor_common", chance = 4000000},
				{group = "armor_all", chance = 2000000},
				{group = "weapons_all", chance = 2500000},
				{group = "wearables_all", chance = 1500000}
			},
			lootChance = 10000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareableeding",""},
		{"creatureareadisease",""}
	}
}

CreatureTemplates:addCreatureTemplate(monstrous_brute, "monstrous_brute")
