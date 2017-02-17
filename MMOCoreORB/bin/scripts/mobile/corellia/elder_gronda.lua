elder_gronda = Creature:new {
	objectName = "@mob/creature_names:gronda_elder",
	socialGroup = "gronda",
	faction = "",
	level = 33,
	chanceHit = 0.39,
	damageMin = 290,
	damageMax = 300,
	baseXp = 3370,
	baseHAM = 8400,
	baseHAMmax = 10200,
	armor = 0,
	resists = {160,20,180,20,20,20,-1,125,-1},
	meatType = "meat_carnivore",
	meatAmount = 360,
	hideType = "hide_leathery",
	hideAmount = 270,
	boneType = "bone_mammal",
	boneAmount = 180,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/gronda_hue.iff"},
	scale = 1.15,
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
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(elder_gronda, "elder_gronda")
