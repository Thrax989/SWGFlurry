gungan_fambaa = Creature:new {
	objectName = "@mob/creature_names:gungan_fambaa",
	socialGroup = "gungan",
	faction = "gungan",
	level = 42,
	chanceHit = 0.44,
	damageMin = 345,
	damageMax = 400,
	baseXp = 4097,
	baseHAM = 9300,
	baseHAMmax = 11300,
	armor = 0,
	resists = {140,140,30,30,180,180,-1,30,-1},
	meatType = "meat_reptilian",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 750,
	boneType = "bone_mammal",
	boneAmount = 725,
	milkType = "milk_domesticated",
	milk = 400,
	tamingChance = 0.25,
	ferocity = 3,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/fambaa_hue.iff"},
	scale = 1.2,
			lootGroups = {
		{
			groups = {
				{group = "junk", chance = 10000000},
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "fambaa_common", chance = 10000000},
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
		{"intimidationattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(gungan_fambaa, "gungan_fambaa")
